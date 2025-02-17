"use client";
import { Avatar, Card, Layout, Menu, Tabs, Typography } from "antd";
import { useSelector } from "react-redux";
import { RootState } from "@/stores";
import { useState } from "react";
import CalendarChart from "@/app/user/center/components/CalendarChart";
import "./index.css";

const { Header, Content, Sider } = Layout;
const { Title, Paragraph } = Typography;

/**
 * 用户中心页面
 * @constructor
 */
export default function UserCenterPage() {
    // 获取登录用户信息
    const loginUser = useSelector((state: RootState) => state.loginUser);
    const user = loginUser; // 便于复用，新起一个变量

    // 控制菜单栏的 Tab 高亮
    const [activeTabKey, setActiveTabKey] = useState<string>("record");

    return (
        <Layout style={{ minHeight: "100vh", background: "#f0f2f5" }}>
            {/* 侧边栏 */}
            <Sider
                width={280}
                style={{
                    background: "#fff",
                    boxShadow: "2px 0 8px rgba(0, 0, 0, 0.1)",
                    padding: "24px 16px",
                }}
            >
                <div style={{ textAlign: "center" }}>
                    <Avatar src={user.userAvatar} size={120} />
                    <Title level={4} style={{ marginTop: 16, marginBottom: 8 }}>
                        {user.userName}
                    </Title>
                    <Paragraph type="secondary" style={{ marginBottom: 24 }}>
                        {user.userProfile}
                    </Paragraph>
                </div>

                {/* 侧边栏菜单 */}
                <Menu
                    mode="inline"
                    selectedKeys={[activeTabKey]}
                    onSelect={({ key }) => setActiveTabKey(key)}
                    items={[
                        {
                            key: "record",
                            label: "刷题记录",
                        },
                        {
                            key: "others",
                            label: "其他",
                        },
                    ]}
                />
            </Sider>

            {/* 内容区域 */}
            <Layout>
                <Header
                    style={{
                        background: "#fff",
                        padding: "0 24px",
                        boxShadow: "0 2px 8px rgba(0, 0, 0, 0.1)",
                    }}
                >
                    <Title level={4} style={{ margin: 0 }}>
                        用户中心
                    </Title>
                </Header>

                <Content style={{ margin: "24px", overflow: "initial" }}>
                    <Card
                        style={{ borderRadius: 8, boxShadow: "0 2px 8px rgba(0, 0, 0, 0.1)" }}
                        bodyStyle={{ padding: 24 }}
                    >
                        {/* 刷题记录 Tab */}
                        {activeTabKey === "record" && (
                            <div>
                                <CalendarChart />
                            </div>
                        )}

                        {/* 其他 Tab */}
                        {activeTabKey === "others" && (
                            <div>
                                <p>这里是其他内容</p>
                            </div>
                        )}
                    </Card>
                </Content>
            </Layout>
        </Layout>
    );
}