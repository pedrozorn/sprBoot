-- �f�[�^�x�[�X���쐬�i�K�v�ɉ����ĕύX�j
CREATE DATABASE TaskDB;
GO

-- �f�[�^�x�[�X���g�p
USE TaskDB;
GO

-- �^�X�N�e�[�u�����쐬
CREATE TABLE Tasks (
    ID INT IDENTITY(1,1) PRIMARY KEY, -- ���������̎�L�[
    TaskName NVARCHAR(255) NOT NULL, -- �^�X�N���i�K�{�j
    IsDeleted BIT NOT NULL DEFAULT 0 -- �폜�t���O�i0: �L��, 1: �폜�j
);
GO

-- �T���v���f�[�^��}���i�K�v�ł���΁j
INSERT INTO Tasks (TaskName, IsDeleted)
VALUES 
    (N'Task 1', 0),
    (N'Task 2', 1),
    (N'Task 3', 0);
GO
