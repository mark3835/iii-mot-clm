--drop SEQUENCE SEQ_TABLE;
--CREATE SEQUENCE SEQ_TABLE;

--drop table user;
CREATE TABLE SEC_USER (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	user_code VARCHAR NOT NULL,
	user_name VARCHAR NOT NULL,
	user_type VARCHAR NOT NULL,
	WORK_OFFICE VARCHAR NOT NULL
);

CREATE TABLE SET_CLASS (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	CODE VARCHAR NOT NULL,
	LOCAL_NAME VARCHAR NOT NULL,
	ENG_NAME VARCHAR NOT NULL,
	DESCRIPT VARCHAR NOT NULL
);

CREATE TABLE SET_CLM_ITEM (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	CODE VARCHAR NOT NULL,
	LOCAL_NAME VARCHAR NOT NULL,
	ENG_NAME VARCHAR NOT NULL
);

CREATE TABLE SET_CLM_NATURE (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	CODE VARCHAR NOT NULL,
	LOCAL_NAME VARCHAR NOT NULL,
	ENG_NAME VARCHAR NOT NULL
);

CREATE TABLE SET_AMOUNT_LIMIT (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	CLASS_ID BIGINT NOT NULL,
	OFFICE_ID BIGINT NOT NULL,
	FROM_ID BIGINT NOT NULL,
	AMOUNT INT NOT NULL,
	DESCRIPT VARCHAR NOT NULL
);

CREATE TABLE SET_ACCIDCIR (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	class_id BIGINT NOT NULL,
	CODE VARCHAR NOT NULL,
	local_name VARCHAR NOT NULL,
	eng_name VARCHAR NOT NULL,
	accidcir_type VARCHAR NOT NULL
);


CREATE TABLE CLM_GI_HISTORY (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	NUMBER INT NOT NULL,
	MODIFY_DATE TIMESTAMP NOT NULL,
	STATE VARCHAR NOT NULL,
	SEC_STATE VARCHAR NOT NULL,
	AUDIT_STATE VARCHAR NOT NULL,
	DESCRIPT VARCHAR NOT NULL,
	PERSON VARCHAR NOT NULL
);


CREATE TABLE SET_OFFICE (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	CODE VARCHAR NOT NULL,
	LOCAL_NAME VARCHAR NOT NULL,
	TEL_CTY VARCHAR NOT NULL,
	TEL_AREA VARCHAR NOT NULL,
	TEL VARCHAR NOT NULL,
	MANAGER VARCHAR NOT NULL
);


CREATE TABLE EXCHANGE_RATE (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	created_By VARCHAR NOT NULL,
	created_Date TIMESTAMP NOT NULL,
	last_Modified_By VARCHAR NOT NULL,
	last_Modified_Date TIMESTAMP NOT NULL,
	version_No BIGINT,
	status VARCHAR NOT NULL,
	CURRENCY VARCHAR NOT NULL,
	RATE DOUBLE NOT NULL
);


--保單table
CREATE TABLE INSURANCE_POLICY (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	CODE VARCHAR NOT NULL,
	INSURANCE_DATE VARCHAR NOT NULL,
	PAY_STATU VARCHAR NOT NULL,
	STATU VARCHAR NOT NULL,
	MONEY_TYPE VARCHAR NOT NULL,
	INSURANCE_TYPE VARCHAR NOT NULL,
	INSURANCE_VALUE VARCHAR NOT NULL,
	POLICY_PAID VARCHAR NOT NULL,
	POLICY_NOT_PAID VARCHAR NOT NULL,
	PROJECT_TYPE VARCHAR NOT NULL,
	PAY_TYPE VARCHAR NOT NULL,
	INSURED_ID VARCHAR NOT NULL,
	INSURED_NAME VARCHAR NOT NULL,
	PLATE VARCHAR NOT NULL,
	FORCED_CODE VARCHAR NOT NULL,
	CAR_TYPE BIGINT,
	ENGINE_CODE VARCHAR NOT NULL,
	CAR_YEAR BIGINT,
	BRAND_TYPE VARCHAR NOT NULL,
	DISPLACEMENT BIGINT,
	PASSENGERS BIGINT,
	SPECIAL_NOTE VARCHAR NOT NULL,
	PROCESS_USER_CODE  VARCHAR NOT NULL
);


--保單項目table
CREATE TABLE INSURANCE_POLICY_ITEM (
--	id BIGINT DEFAULT (NEXT VALUE FOR SEQ_TABLE) PRIMARY KEY NOT NULL,
	id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	CODE VARCHAR NOT NULL,
	INSURANCE_DATE VARCHAR NOT NULL,
	PAY_STATU VARCHAR NOT NULL,
	INSURANCE_ITEM VARCHAR NOT NULL,
	EACH_ACCIDENT VARCHAR NOT NULL,
	EACH_HURT VARCHAR NOT NULL,
	EACH_DEAD VARCHAR NOT NULL,
	PAY_SELF VARCHAR NOT NULL,
	MONEY_TYPE VARCHAR NOT NULL,
	INSURANCE_TYPE VARCHAR NOT NULL,
	INSURANCE_VALUE VARCHAR NOT NULL,
	PLATE VARCHAR NOT NULL
);

