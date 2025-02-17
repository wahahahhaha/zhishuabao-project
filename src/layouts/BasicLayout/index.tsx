import React from "react";
import { ConfigProvider } from "antd";
import { ProLayout } from "@ant-design/pro-components";
import { GithubFilled, LogoutOutlined, UserOutlined } from "@ant-design/icons";
import { Dropdown, message } from "antd";
import { usePathname, useRouter } from "next/navigation";
import Image from "next/image";
import Link from "next/link";
import GlobalFooter from "@/components/GlobalFooter";
import { menus } from "../../../config/menu";
import { useDispatch, useSelector } from "react-redux";
import { AppDispatch, RootState } from "@/stores";
import getAccessibleMenus from "@/access/menuAccess";
import { userLogoutUsingPost } from "@/api/userController";
import { setLoginUser } from "@/stores/loginUser";
import { DEFAULT_USER } from "@/constants/user";
import SearchInput from "@/layouts/BasicLayout/components/SearchInput";
import "./index.css";

interface Props {
    children: React.ReactNode;
}

export default function BasicLayout({ children }: Props) {
    const pathname = usePathname();
    const loginUser = useSelector((state: RootState) => state.loginUser);
    const dispatch = useDispatch<AppDispatch>();
    const router = useRouter();

    const userLogout = async () => {
        try {
            await userLogoutUsingPost();
            message.success("已退出登录");
            dispatch(setLoginUser(DEFAULT_USER));
            router.push("/user/login");
        } catch (e) {
            message.error("操作失败，" + e.message);
        }
    };

    return (
        <ConfigProvider
            theme={{
                // 设置主题颜色为蓝色
                token: {
                    colorPrimary: "#1890ff", // 蓝色
                    colorBgBase: "#ffffff", // 白色背景
                    colorBgContainer: "#f0f2f5", // 内容区背景
                    colorTextBase: "#333", // 主文本颜色
                    colorLink: "#1890ff", // 链接颜色
                },
            }}
        >
            <div
                id="basicLayout"
                style={{
                    height: "100vh",
                    overflow: "auto",
                    backgroundColor: "#f0f2f5", // 设置整体背景色为浅白色
                }}
            >
                <ProLayout
                    title="智刷宝"
                    layout="top"
                    logo={
                        <Image
                            src="/assets/logo.png"
                            height={32}
                            width={32}
                            alt="智刷宝 - HLM"
                        />
                    }
                    location={{
                        pathname,
                    }}
                    avatarProps={{
                        src: loginUser.userAvatar || "/assets/logo.png",
                        size: "small",
                        title: loginUser.userName || "用户",
                        render: (props, dom) => {
                            if (!loginUser.id) {
                                return (
                                    <div
                                        onClick={() => {
                                            router.push("/user/login");
                                        }}
                                    >
                                        {dom}
                                    </div>
                                );
                            }
                            return (
                                <Dropdown
                                    menu={{
                                        items: [
                                            {
                                                key: "userCenter",
                                                icon: <UserOutlined />,
                                                label: "个人中心",
                                            },
                                            {
                                                key: "logout",
                                                icon: <LogoutOutlined />,
                                                label: "退出登录",
                                            },
                                        ],
                                        onClick: async (event: { key: React.Key }) => {
                                            const { key } = event;
                                            if (key === "logout") {
                                                userLogout();
                                            } else if (key === "userCenter") {
                                                router.push("/user/center");
                                            }
                                        },
                                    }}
                                >
                                    {dom}
                                </Dropdown>
                            );
                        },
                    }}
                    actionsRender={(props) => {
                        if (props.isMobile) return [];
                        return [
                            <SearchInput key="search" />,
                            <a
                                key="github"
                                href="https://github.com/wahahahhaha/zhishuabao-project"
                                target="_blank"
                            >
                                <GithubFilled key="GithubFilled" />
                            </a>,
                        ];
                    }}
                    headerTitleRender={(logo, title, _) => {
                        return (
                            <a>
                                {logo}
                                {title}
                            </a>
                        );
                    }}
                    footerRender={() => {
                        return <GlobalFooter />;
                    }}
                    onMenuHeaderClick={(e) => console.log(e)}
                    menuDataRender={() => {
                        return getAccessibleMenus(loginUser, menus);
                    }}
                    menuItemRender={(item, dom) => (
                        <Link href={item.path || "/"} target={item.target}>
                            {dom}
                        </Link>
                    )}
                >
                    {children}
                </ProLayout>
            </div>
        </ConfigProvider>
    );
}
