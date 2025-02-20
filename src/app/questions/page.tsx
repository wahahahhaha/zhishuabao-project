"use server";
import Title from "antd/es/typography/Title";
import { message } from "antd";
import { searchQuestionVoByPageUsingPost } from "@/api/questionController";
import QuestionTable from "@/components/QuestionTable";
import "./index.css";

/**
 * 题目列表页面
 * @constructor
 */
export default async function QuestionsPage({ searchParams }) {
  // 获取 url 的查询参数
  const { q: searchText } = searchParams;
  // 题目列表和总数
  let questionList = [];
  let total = 0;

  try {
    const res = await searchQuestionVoByPageUsingPost({
      searchText,
      pageSize: 12,
      sortField: "createTime",
      sortOrder: "descend",
    });
    questionList = res.data.records ?? [];
    total = res.data.total ?? 0;
  } catch (e) {
    message.error("获取题目列表失败，" + e.message);
  }

  return (
      <div id="questionsPage" className="max-width-content blue-white-theme">
        <div className="header-section">
          <Title level={2} className="page-title">题目大全</Title>
          <p className="page-description">探索各种题目，提升你的技能</p>
        </div>
        <div className="content-section">
          <QuestionTable
              defaultQuestionList={questionList}
              defaultTotal={total}
              defaultSearchParams={{
                title: searchText,
              }}
          />
        </div>
      </div>
  );
}