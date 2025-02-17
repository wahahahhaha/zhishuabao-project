"use client";
import React from "react";
import { Divider, Layout, message, Spin, Flex, Card, Typography } from "antd";
import Link from "next/link";
import { listQuestionBankVoByPageUsingPost } from "@/api/questionBankController";
import { listQuestionVoByPageUsingPost } from "@/api/questionController";
import QuestionBankList from "@/components/QuestionBankList";
import QuestionList from "@/components/QuestionList";
import "./index.css";

const { Title } = Typography;
const { Content } = Layout;

/**
 * 主页
 * @constructor
 */
export default function HomePage() {
  const [questionBankList, setQuestionBankList] = React.useState([]);
  const [questionList, setQuestionList] = React.useState([]);
  const [loading, setLoading] = React.useState(true);

  React.useEffect(() => {
    const fetchData = async () => {
      try {
        const questionBankRes = await listQuestionBankVoByPageUsingPost({
          pageSize: 12,
          sortField: "createTime",
          sortOrder: "descend",
        });
        setQuestionBankList(questionBankRes.data.records ?? []);
      } catch (e) {
        message.error("获取题库列表失败，" + e.message);
      }

      try {
        const questionRes = await listQuestionVoByPageUsingPost({
          pageSize: 12,
          sortField: "createTime",
          sortOrder: "descend",
        });
        setQuestionList(questionRes.data.records ?? []);
      } catch (e) {
        message.error("获取题目列表失败，" + e.message);
      }

      setLoading(false);
    };

    fetchData();
  }, []);

  return (
      <Layout style={{ minHeight: "100vh", background: "#f0f8ff" }}> {/* 浅蓝色背景 */}
        <Content style={{ padding: "24px", maxWidth: 1200, margin: "0 auto" }}>
          {loading ? (
              <div style={{ textAlign: "center", marginTop: 100 }}>
                <Spin size="large" tip="加载中..." />
              </div>
          ) : (
              <>
                {/* 最新题库部分 */}
                <Card
                    style={{
                      marginBottom: 24,
                      borderRadius: 8,
                      boxShadow: "0 4px 12px rgba(24, 144, 255, 0.2)", // 蓝色阴影
                      border: "1px solid #1890ff", // 蓝色边框
                    }}
                    bodyStyle={{ padding: 24 }}
                >
                  <Flex justify="space-between" align="center" style={{ marginBottom: 24 }}>
                    <Title level={3} style={{ margin: 0, color: "#1890ff" }}> {/* 蓝色标题 */}
                      最新题库
                    </Title>
                    <Link
                        href="/banks"
                        style={{
                          color: "#1890ff",
                          fontWeight: 500,
                          textDecoration: "none",
                          transition: "color 0.3s",
                        }}
                        className="hover-link" // 悬停效果
                    >
                      查看更多
                    </Link>
                  </Flex>
                  <QuestionBankList questionBankList={questionBankList} />
                </Card>

                {/* 最新题目部分 */}
                <Card
                    style={{
                      borderRadius: 8,
                      boxShadow: "0 4px 12px rgba(24, 144, 255, 0.2)", // 蓝色阴影
                      border: "1px solid #1890ff", // 蓝色边框
                    }}
                    bodyStyle={{ padding: 24 }}
                >
                  <Flex justify="space-between" align="center" style={{ marginBottom: 24 }}>
                    <Title level={3} style={{ margin: 0, color: "#1890ff" }}> {/* 蓝色标题 */}
                      最新题目
                    </Title>
                    <Link
                        href="/questions"
                        style={{
                          color: "#1890ff",
                          fontWeight: 500,
                          textDecoration: "none",
                          transition: "color 0.3s",
                        }}
                        className="hover-link" // 悬停效果
                    >
                      查看更多
                    </Link>
                  </Flex>
                  <QuestionList questionList={questionList} />
                </Card>
              </>
          )}
        </Content>
      </Layout>
  );
}