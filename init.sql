-- データベースを作成（必要に応じて変更）
CREATE DATABASE TaskDB;
GO

-- データベースを使用
USE TaskDB;
GO

-- タスクテーブルを作成
CREATE TABLE Tasks (
    ID INT IDENTITY(1,1) PRIMARY KEY, -- 自動増分の主キー
    TaskName NVARCHAR(255) NOT NULL, -- タスク名（必須）
    IsDeleted BIT NOT NULL DEFAULT 0 -- 削除フラグ（0: 有効, 1: 削除）
);
GO

-- サンプルデータを挿入（必要であれば）
INSERT INTO Tasks (TaskName, IsDeleted)
VALUES 
    (N'Task 1', 0),
    (N'Task 2', 1),
    (N'Task 3', 0);
GO
