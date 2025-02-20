"use client";
import CreateModal from "./components/CreateModal";
import UpdateModal from "./components/UpdateModal";
import {
  batchDeleteQuestionsUsingPost,
  deleteQuestionUsingPost,
  listQuestionByPageUsingPost,
} from "@/api/questionController";
import { PlusOutlined } from "@ant-design/icons";
import type { ActionType, ProColumns } from "@ant-design/pro-components";
import { PageContainer, ProTable } from "@ant-design/pro-components";
import { Button, message, Popconfirm, Space, Table, Typography } from "antd";
import React, { useRef, useState } from "react";
import TagList from "@/components/TagList";
import MdEditor from "@/components/MdEditor";
import UpdateBankModal from "@/app/admin/question/components/UpdateBankModal";
import BatchAddQuestionsToBankModal from "@/app/admin/question/components/BatchAddQuestionsToBankModal";
import BatchRemoveQuestionsFromBankModal from "@/app/admin/question/components/BatchRemoveQuestionsFromBankModal";
import "./index.css";  // 引入蓝白主题的CSS文件

const QuestionAdminPage: React.FC = () => {
  const [createModalVisible, setCreateModalVisible] = useState<boolean>(false);
  const [updateModalVisible, setUpdateModalVisible] = useState<boolean>(false);
  const [updateBankModalVisible, setUpdateBankModalVisible] = useState<boolean>(false);
  const [batchAddQuestionsToBankModalVisible, setBatchAddQuestionsToBankModalVisible] = useState<boolean>(false);
  const [batchRemoveQuestionsFromBankModalVisible, setBatchRemoveQuestionsFromBankModalVisible] = useState<boolean>(false);
  const [selectedQuestionIdList, setSelectedQuestionIdList] = useState<number[]>([]);
  const actionRef = useRef<ActionType>();
  const [currentRow, setCurrentRow] = useState<API.Question>();

  const handleDelete = async (row: API.Question) => {
    const hide = message.loading("正在删除");
    try {
      await deleteQuestionUsingPost({ id: row.id });
      hide();
      message.success("删除成功");
      actionRef?.current?.reload();
      return true;
    } catch (error: any) {
      hide();
      message.error("删除失败，" + error.message);
      return false;
    }
  };

  const handleBatchDelete = async (questionIdList: number[]) => {
    const hide = message.loading("正在操作");
    try {
      await batchDeleteQuestionsUsingPost({ questionIdList });
      hide();
      message.success("操作成功");
    } catch (error: any) {
      hide();
      message.error("操作失败，" + error.message);
    }
  };

  const columns: ProColumns<API.Question>[] = [
    { title: "id", dataIndex: "id", valueType: "text", hideInForm: true },
    { title: "所属题库", dataIndex: "questionBankId", hideInTable: true, hideInForm: true },
    { title: "标题", dataIndex: "title", valueType: "text" },
    {
      title: "内容",
      dataIndex: "content",
      valueType: "text",
      hideInSearch: true,
      width: 240,
      renderFormItem: (item, { fieldProps }, form) => <MdEditor {...fieldProps} />,
    },
    {
      title: "答案",
      dataIndex: "answer",
      valueType: "text",
      hideInSearch: true,
      width: 640,
      renderFormItem: (item, { fieldProps }, form) => <MdEditor {...fieldProps} />,
    },
    {
      title: "标签",
      dataIndex: "tags",
      valueType: "select",
      fieldProps: { mode: "tags" },
      render: (_, record) => <TagList tagList={JSON.parse(record.tags || "[]")} />,
    },
    { title: "创建用户", dataIndex: "userId", valueType: "text", hideInForm: true },
    { title: "创建时间", sorter: true, dataIndex: "createTime", valueType: "dateTime", hideInSearch: true, hideInForm: true },
    { title: "编辑时间", sorter: true, dataIndex: "editTime", valueType: "dateTime", hideInSearch: true, hideInForm: true },
    { title: "更新时间", sorter: true, dataIndex: "updateTime", valueType: "dateTime", hideInSearch: true, hideInForm: true },
    {
      title: "操作",
      dataIndex: "option",
      valueType: "option",
      render: (_, record) => (
          <Space size="middle">
            <Typography.Link onClick={() => { setCurrentRow(record); setUpdateModalVisible(true); }}>修改</Typography.Link>
            <Typography.Link onClick={() => { setCurrentRow(record); setUpdateBankModalVisible(true); }}>修改所属题库</Typography.Link>
            <Typography.Link type="danger" onClick={() => handleDelete(record)}>删除</Typography.Link>
          </Space>
      ),
    },
  ];

  return (
      <PageContainer
          header={{
            title: "题目管理",
            ghost: true,
            extra: [
              <Button
                  type="primary"
                  key="primary"
                  onClick={() => setCreateModalVisible(true)}
                  icon={<PlusOutlined />}
              >
                新建
              </Button>,
            ],
          }}
          className="question-admin-container" // 这可以在CSS中进行更精细的控制
      >
        <ProTable<API.Question>
            headerTitle="查询表格"
            actionRef={actionRef}
            scroll={{ x: true }}
            search={{ labelWidth: 120 }}
            rowKey="id"
            rowSelection={{
              selections: [Table.SELECTION_ALL, Table.SELECTION_INVERT],
            }}
            tableAlertRender={({ selectedRowKeys, selectedRows, onCleanSelected }) => (
                <Space size={24}>
            <span>
              已选 {selectedRowKeys.length} 项
              <a style={{ marginInlineStart: 8 }} onClick={onCleanSelected}>取消选择</a>
            </span>
                </Space>
            )}
            tableAlertOptionRender={({ selectedRowKeys, selectedRows, onCleanSelected }) => (
                <Space size={16}>
                  <Button
                      onClick={() => {
                        setSelectedQuestionIdList(selectedRowKeys as number[]);
                        setBatchAddQuestionsToBankModalVisible(true);
                      }}
                  >
                    批量向题库添加题目
                  </Button>
                  <Button
                      onClick={() => {
                        setSelectedQuestionIdList(selectedRowKeys as number[]);
                        setBatchRemoveQuestionsFromBankModalVisible(true);
                      }}
                  >
                    批量从题库移除题目
                  </Button>
                  <Popconfirm
                      title="确认删除"
                      description="你确定要删除这些题目么？"
                      onConfirm={() => handleBatchDelete(selectedRowKeys as number[])}
                      okText="确认"
                      cancelText="取消"
                  >
                    <Button danger>批量删除题目</Button>
                  </Popconfirm>
                </Space>
            )}
            toolBarRender={() => [
              <Button
                  type="primary"
                  key="primary"
                  onClick={() => setCreateModalVisible(true)}
                  icon={<PlusOutlined />}
              >
                新建
              </Button>,
            ]}
            request={async (params, sort, filter) => {
              const sortField = Object.keys(sort)?.[0];
              const sortOrder = sort?.[sortField] ?? undefined;

              const { data, code } = await listQuestionByPageUsingPost({
                ...params,
                sortField,
                sortOrder,
                ...filter,
              });

              return {
                success: code === 0,
                data: data?.records || [],
                total: Number(data?.total) || 0,
              };
            }}
            columns={columns}
        />
        {/* Modal Components */}
        <CreateModal visible={createModalVisible} columns={columns} onSubmit={() => { setCreateModalVisible(false); actionRef.current?.reload(); }} onCancel={() => setCreateModalVisible(false)} />
        <UpdateModal visible={updateModalVisible} columns={columns} oldData={currentRow} onSubmit={() => { setUpdateModalVisible(false); setCurrentRow(undefined); actionRef.current?.reload(); }} onCancel={() => setUpdateModalVisible(false)} />
        <UpdateBankModal visible={updateBankModalVisible} questionId={currentRow?.id} onCancel={() => setUpdateBankModalVisible(false)} />
        <BatchAddQuestionsToBankModal visible={batchAddQuestionsToBankModalVisible} questionIdList={selectedQuestionIdList} onSubmit={() => setBatchAddQuestionsToBankModalVisible(false)} onCancel={() => setBatchAddQuestionsToBankModalVisible(false)} />
        <BatchRemoveQuestionsFromBankModal visible={batchRemoveQuestionsFromBankModalVisible} questionIdList={selectedQuestionIdList} onSubmit={() => setBatchRemoveQuestionsFromBankModalVisible(false)} onCancel={() => setBatchRemoveQuestionsFromBankModalVisible(false)} />
      </PageContainer>
  );
};

export default QuestionAdminPage;
