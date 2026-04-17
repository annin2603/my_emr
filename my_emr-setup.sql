-- 1. 既存の古いDBがあれば削除して新しく作成
DROP DATABASE IF EXISTS emr_db;
CREATE DATABASE emr_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE emr_db;

-- 2. ユーザー作成（教科書と同じ staff ユーザー）
DROP USER IF EXISTS 'staff'@'localhost';
CREATE USER 'staff'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON emr_db.* TO 'staff'@'localhost';

-- 3. 患者テーブル（教科書の customer に相当）
CREATE TABLE patient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_number VARCHAR(10) NOT NULL UNIQUE, -- P0001など
    name VARCHAR(100) NOT NULL,
    kana VARCHAR(100),
    birthday DATE,
    gender VARCHAR(10),
    blood_type VARCHAR(5),
    allergy TEXT, -- 長くなる可能性があるので TEXT 型
    room_number VARCHAR(10)
);

-- 4. 看護記録テーブル（教科書の purchase よりも詳細な記録用）
CREATE TABLE nursing_record (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    recorded_at DATETIME NOT NULL, -- 記録日時
    content TEXT NOT NULL,         -- 記録内容
    staff_name VARCHAR(100),       -- 記入者名
    FOREIGN KEY (patient_id) REFERENCES patient(id)
);

-- 5. テストデータの挿入（例として3名分）
INSERT INTO patient (patient_number, name, kana, birthday, gender, blood_type, allergy, room_number) VALUES
('P0001', '山田 太郎', 'ヤマダ タロウ', '1980-05-12', '男性', 'A+', 'ピーナッツ', '402'),
('P0005', '伊藤 明美', 'イトウ アケミ', '1975-12-05', '女性', 'O-', 'ラテックス', '402'),
('P0007', '中村 節子', 'ナカムラ セツコ', '1935-02-10', '女性', 'B+', 'なし', '508');
