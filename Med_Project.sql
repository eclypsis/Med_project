#CREATE & USE MEDICINE_DB
CREATE DATABASE MEDICINE_DB;
USE MEDICINE_DB;

#1. MEDICINE
CREATE TABLE MEDICINE(
MEDICINE_ID BIGINT NOT NULL AUTO_INCREMENT,
MEDICINE_KEY VARCHAR(100) NOT NULL UNIQUE,
NAME TEXT,
DESCRIPTION TEXT,
PRICE DOUBLE,
VALID BOOLEAN,
PRODUCER TEXT,
PRIMARY KEY(MEDICINE_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;
#VALUES
INSERT INTO MEDICINE(MEDICINE_KEY,NAME,DESCRIPTION,PRICE,VALID,PRODUCER) VALUES
('EMEA000520','Advate','Advate is indicated for treatment and prophylaxis of bleeding in patients with haemophilia A (congenital factor-VIII deficiency.',59.85 ,true,'Baxter AG'),
('EMEA000219','Ammonaps','Ammonaps is indicated as adjunctive therapy in the chronic management of urea cycle disorders, involving deficiencies of carbamylphosphate synthetase, ornithine transcarbamylase orargininosuccinate synthetase.',121.31,true,'Swedish Orphan Biovitrum International AB'),
('EMEA000081','Betaferon','Betaferon is indicated for the treatment of patients with a single demyelinating event with an active inflammatory process.',32.25,true,'Bayer AG'),
('EMEA000725','Binocrit','Binocrit is indicated for treatment of symptomatic anaemia associated with chronic renal failure (CRF) in adult and paediatric patients.',45.99,true,'Sandoz GmbH'),
('EMEA001241','Brilique','Brilique is co-administered with acetylsalicylic acid (ASA), and it is indicated for the prevention of atherothrombotic events in adult patients with acute coronary syndromes (ACS) or a history of myocardial infarction (MI) and a high risk of developing an atherothrombotic event',199.23,true,'AstraZeneca AB'),
('EMEA000089','Caelyx','Caelyx is indicated as monotherapy for patients with metastatic breast cancer, where there is an increased cardiac risk and for treatment of advanced ovarian cancer in women who have failed a first-line platinum-based chemotherapy regimen in combination with bortezomib for the treatment of progressive multiple myeloma in patients who have received at least one prior therapy and who have already undergone or are unsuitable for bone marrow transplant.',234.90,true,'Janssen-Cilag International N.V.'),
('EMEA000982','Celvapan','Celvapan is indicated for prophylaxis of influenza caused by A(H1N1)v 2009 virus and it should be used in accordance with official guidance.',23.45,false,'Nanotherapeutics Bohumil'),
('EMEA000334','Ceprotin','Ceprotin is indicated in purpura fulminans and coumarin-induced skin necrosis in patients with severe congenital protein C deficiency.',67.23,true,'Baxter AG'),
('EMEA000222','CoAprovel','CoAprovel is indicated for treatment of essential hypertension. This fixed dose combination is indicated in adult patients whose blood pressure is not adequately controlled on irbesartan or hydrochlorothiazide alone.',12.56,true,'Sanofi Clir SNC'),
('EMEA002087','Dificlir','Dificlir is indicated in adults for the treatment of Clostridium difficile infections (CDI) also known as C. difficile-associated diarrhoea (CDAD).',22.45,true,'Astellas Pharma Europe BV'),
('EMEA000476','Dukoral','Dukoral is indicated for active immunisation against disease caused by Vibrio cholerae serogroup O1 in adults and children from 2 years of age who will be visiting endemic/epidemic areas.',89.14,true,'Valneva Sweden AB'),
('EMEA003717','Ebilfumin','Ebilfumin is indicated for the prevention of influenzaPost-exposure in individuals 1 year of age or older following contact with a clinically diagnosed influenza case when influenza virus is circulating in the community.',34.21,true,'Actavis Group PTC'),
('EMEA002148','Eliquis','Eliquis is indicated for the prevention of venous thromboembolic events (VTE) in adult patients who have undergone elective hip or knee replacement surgery.',52.01,true,'Bristol-Myers Squibb'),
('EMEA000533','Emtriva','Emtriva is indicated for the treatment of HIV-1 infected adults and children in combination with other antiretroviral agents. This indication is based on studies in treatment-naive patients and treatment-experienced patients with stable virological control.',48.23,true,'Gilead Sciences Ireland UC'),
('EMEA000169','Exelon','Exelon is indicated for Symptomatic treatment of mild to moderately severe Alzheimers dementia. Also for symptomatic treatment of mild to moderately severe dementia in patients with idiopathic Parkinsons disease.',230.23,true,'Novartis Europharm Ltd'),
('EMEA000236','Ferriprox','Ferriprox is indicated for the treatment of iron overload in patients with thalassaemia major when current chelation therapy is contraindicated or inadequate.',223.10,true,'Apotex Europe BV'),
('EMEA000899','Firazyr','Firazyr is indicated for symptomatic treatment of acute attacks of hereditary angioedema (HAE) in adults (with C1-esterase-inhibitor deficiency).',45.10,true,'Shire Orphan Therapies GmbH'),
('EMEA000619','Fosavance','Fosavance is indicated for treatment of postmenopausal osteoporosis in patients at risk of vitamin-D insufficiency and it reduces the risk of vertebral and hip fractures.',34.29,true,'Merck Sharp & Dohme B.V.'),
('EMEA003833','Glyxambi','Glyxambi is indicated in adults aged 18 years and older to improve glycaemic control when metformin and/or sulphonylurea (SU) and one of the monocomponents of Glyxambi do not provide adequate glycaemic control.',98.10,true,'Boehringer Ingelheim International GmbH'),
('EMEA004406','Hemlibra','Hemlibra is indicated for routine prophylaxis of bleeding episodes in patients with haemophilia A with factor VIII inhibitors.',52.10,true,'Roche Registration Limited'),
('EMEA000610','Noxafil','Nplate is indicated for adult chronic-immune (idiopathic)-thrombocytopenic-purpura (ITP) patients who are refractory to other treatments (e.g. corticosteroids, immunoglobulins).',21.19,true,'Merck Sharp & Dohme Ltd'),
('EMEA000818','Nevanac','Nevanac is indicated for prevention and treatment of postoperative pain and inflammation associated with cataract surgery, reduction in the risk of postoperative macular oedema associated with cataract surgery in diabetic patients.',32.89,true,'Novartis Europharm Limited'),
('EMEA000626','Neupro','Parkinson''s disease:Neupro is indicated for the treatment of the signs and symptoms of early-stage idiopathic Parkinson''s disease as monotherapy (i.e. without levodopa) or in combination with levodopa, i.e. over the course of the disease, through to late stages when the effect of levodopa wears off or becomes inconsistent and fluctuations of the therapeutic effect occur (end of dose or ''on-off'' fluctuations).Restless-legs syndrome:Neupro is indicated for the symptomatic treatment of moderate to severe idiopathic restless-legs syndrome in adults.',5.89,true,'UCB Pharma S.A.'),
('EMEA003860','Nucala','Nucala is indicated as an add-on treatment for severe refractory eosinophilic asthma in adult patients.',59.99,true,'GlaxoSmithKline Trading Services'),
('EMEA002778','Inflectra','Rheumatoid arthritis, Inflectra, in combination with methotrexate, is indicated for the reduction of signs and symptoms as well as the improvement in physical function in: adult patients with active disease when the response to diseasemodifying antirheumatic drugs (DMARDs), including methotrexate, has been inadequate',16.79,false,'Pfizer Europe MA EEIG'),
('EMEA000210','Pritor','Hypertension Treatment of essential hypertension in adults. Cardiovascular prevention Reduction of cardiovascular morbidity in patients with: manifest atherothrombotic cardiovascular disease (history of coronary heart disease, stroke, or peripheral arterial disease) or type-2 diabetes mellitus with documented target-organ damage.',20.49,true,'Bayer AG'),
('EMEA001012','Resolor','Resolor is indicated for symptomatic treatment of chronic constipation in adults in whom laxatives fail to provide adequate relief.',132.99,true,'Shire Pharmaceuticals Ireland Ltd'),
('EMEA001026','Victoza','Victoza is indicated for the treatment of adults with insufficiently controlled type 2 diabetes mellitus as an adjunct to diet and exercise as monotherapy when metformin is considered inappropriate due to intolerance or contraindications in addition to other medicinal products for the treatment of diabetes.For study results with respect to combinations, effects on glycaemic control and cardiovascular events, and the populations studied.',45.49,false,'Novo Nordisk A/S');


#2. EFFECT
CREATE TABLE EFFECT(
EFFECT_ID BIGINT NOT NULL AUTO_INCREMENT,
DESCRIPTION TEXT,
PRIMARY KEY(EFFECT_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;
#VALUES


#3. PRODUCER
CREATE TABLE PRODUCER(
PRODUCER_ID BIGINT NOT NULL AUTO_INCREMENT,
NAME TEXT,
DESCRIPTION TEXT,
TEL TEXT,
EMAIL TEXT,
FAX TEXT,
ADDRESS TEXT,
PRIMARY KEY(PRODUCER_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;

#4. SIDE EFFECT
CREATE TABLE SIDE_EFFECT(
SIDE_EFFECT_ID BIGINT NOT NULL AUTO_INCREMENT,
DESCRIPTION TEXT,
PRIMARY KEY(SIDE_EFFECT_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;
#VALUES
INSERT INTO SIDE_EFFECT(SIDE_EFFECT_ID,DESCRIPTION) VALUES
('0520','Advate most common side effects can be flushing of the face, headache, nausea, and fast heartbeat may sometimes occur and can be lessened by giving this medication more slowly. Burning/redness/irritation at the injection site, fever, and chills may also occur. If any of these effects persist or worsen, tell your doctor or pharmacist promptly.'),
('0219','Ammonaps most common side effects can be anaemia, thrombocytopenia, leukopenia, leukocytosis and thrombocytosis.'),
('0081','Betaferon most common side effects can be itching all over your body, swelling of your face and/or your tongue or sudden shortness of breath.'),
('0725','Binocrit most common side effects can be pyrexia, hypertension, arthralgia, muscle spasm, dizziness and upper respiratory tract infection.'),
('1241','Brilique most common side effects can be strokes, bleeding into the brain, fainting and short of breath.');
#5. ACTIVE_SUBSTANCE
CREATE TABLE ACTIVE_SUBSTANCE(
ACTIVE_SUBSTANCE_ID BIGINT NOT NULL AUTO_INCREMENT,
ACTIVE_SUBSTANCE_KEY VARCHAR(100) NOT NULL UNIQUE,
ACTIVE_SUBSTANCE_NAME TEXT,
DESCRIPTION TEXT,
PRIMARY KEY(ACTIVE_SUBSTANCE_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;
#VALUES
INSERT INTO ACTIVE_SUBSTANCE(ATC_KEY,ACTIVE_SUBSTANCE_NAME,DESCRIPTION) VALUES
('B02BD02','octocog alfa','Antihemophilic Factor, Human Recombinant is the recombinant form of human antihemophilic factor (AH)) (Factor VIII) with coagulation promoting activity. Antihemophilic factor binds to factor IXa in the coagulation cascade along with calcium and phospholipid.'),
('A16AX03','sodium phenylbutyrate','Sodium Phenylbutyrate is the sodium salt of phenylbutyrate, a derivative of the short-chain fatty acid butyrate, with potential antineoplastic activity'),
('L03AB08','interferon beta-1b','Interferon beta binds to type I interferon receptors (IFNAR1 and IFNAR2c) which activate two Jak (Janus kinase) tyrosine kinases (Jak1 and Tyk2). These transphosphorylate themselves and phosphorylate the receptors.'),
('B03XA01','epoetin alfa','Binding of erythropoietin to the erythropoietin receptor leads to receptor dimerization, which facilitates activation of JAK-STAT signaling pathways within the cytosol.'),
('B01AC24','ticagrelor','icagrelor is a P2Y12 Platelet Inhibitor. The mechanism of action of ticagrelor is as a Phenylalanine Hydroxylase Activator, and P2Y12 Receptor Antagonist, and Cytochrome P450 3A4 Inhibitor, and Cytochrome P450 3A5 Inhibitor, and P-Glycoprotein Inhibitor. The physiologic effect of ticagrelor is by means of Decreased Platelet Aggregation.');

SELECT * FROM ACTIVE_SUBSTANCE; 

#6.USER
CREATE TABLE USER(
USER_ID BIGINT NOT NULL AUTO_INCREMENT,
USER_EMAIL VARCHAR(100) NOT NULL UNIQUE,
USER_PASSWORD VARCHAR(100) NOT NULL,
FIRST_NAME TEXT,
LAST_NAME TEXT,
DATE_OF_BIRTH DATE,
TEL TEXT,
ADDRESS TEXT,
PRIMARY KEY(USER_ID))ENGINE = INNODB DEFAULT CHARSET = UTF8;
INSERT INTO USER (USER_EMAIL,USER_PASSWORD,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,TEL,ADDRESS) VALUES
('xenofon@gmail.com','xenofon1!','Xenofon','Zinoviou','2018-1-20','6900900900','Ermou 25, Athens'),
('alex@gmail.com','alex1!','Alexandros','Dikonimos','2018-12-31','6988888888','Stadiou 18, Athens'),
('michael_md@gmail.com','dr1!','Michael','Donaghue','1950-8-12','6940123456','Voulis 4, Athens'),
('paul_md@gmail.com','paul1!','Paul','Castle','1970-4-15','6997675511','Ormou 24, Peristeri'),
('ashley@gmail.com','ashley1!','Kate','Thomas','1995-10-11','6912441212','Leof. Vouliagmenis 156, Argyroupoli'),
('visitor@gmail.com','visitor1!','Visitor','Visitor','2000-1-1','2000100099','28A Visiting Castle, England');



#7.ROLE
CREATE TABLE ROLE(
ROLE_ID BIGINT NOT NULL AUTO_INCREMENT,
ROLE_TYPE TEXT NOT NULL,
PRIMARY KEY(ROLE_ID))ENGINE = INNODB DEFAULT CHARSET = UTF8;

INSERT INTO ROLE (ROLE_TYPE) VALUES ('ADMIN'),('DOCTOR'),('PATIENT'),('VISITOR');



#8USER_ROLE
CREATE TABLE USER_ROLE(
USER_ID BIGINT NOT NULL,
ROLE_ID BIGINT NOT NULL,
PRIMARY KEY(USER_ID,ROLE_ID),
FOREIGN KEY(USER_ID)REFERENCES USER(USER_ID),
FOREIGN KEY(ROLE_ID) REFERENCES ROLE(ROLE_ID))ENGINE = INNODB DEFAULT CHARSET = UTF8;
INSERT INTO USER_ROLE VALUES(1,1),(2,1),(3,2),(4,2),(5,3),(6,4);

#9. MEDICINE_ACTIVE_SUBSTANCE
CREATE TABLE MEDICINE_ACTIVE_SUBSTANCE(
MEDICINE_ID BIGINT NOT NULL,
ACTIVE_SUBSTANCE_ID BIGINT NOT NULL,
PRIMARY KEY(MEDICINE_ID,ACTIVE_SUBSTANCE_ID),
FOREIGN KEY(MEDICINE_ID)REFERENCES MEDICINE(MEDICINE_ID),
FOREIGN KEY(ACTIVE_SUBSTANCE_ID)REFERENCES ACTIVE_SUBSTANCE(ACTIVE_SUBSTANCE_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;
#VALUES
INSERT INTO MEDICINE_ACTIVE_SUBSTANCE(MEDICINE_ID,ACTIVE_SUBSTANCE_ID) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);


#10. MEDICINE_PRODUCER
CREATE TABLE MEDICINE_PRODUCER(
MEDICINE_ID BIGINT NOT NULL,
PRODUCER_ID BIGINT NOT NULL,
PRIMARY KEY(MEDICINE_ID,PRODUCER_ID),
FOREIGN KEY(MEDICINE_ID)REFERENCES MEDICINE(MEDICINE_ID),
FOREIGN KEY(PRODUCER_ID)REFERENCES PRODUCER(PRODUCER_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;

#11. MEDICINE_EFFECT
CREATE TABLE MEDICINE_EFFECT(
MEDICINE_ID BIGINT NOT NULL,
EFFECT_ID BIGINT NOT NULL,
PRIMARY KEY(MEDICINE_ID,EFFECT_ID),
FOREIGN KEY(MEDICINE_ID)REFERENCES MEDICINE(MEDICINE_ID),
FOREIGN KEY(EFFECT_ID)REFERENCES EFFECT(EFFECT_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;


#13. MEDICINE_SIDE_EFFECT
CREATE TABLE MEDICINE_SIDE_EFFECT(
MEDICINE_ID BIGINT NOT NULL,
SIDE_EFFECT_ID BIGINT NOT NULL,
PRIMARY KEY(MEDICINE_ID,SIDE_EFFECT_ID),
FOREIGN KEY(MEDICINE_ID)REFERENCES MEDICINE(MEDICINE_ID),
FOREIGN KEY(SIDE_EFFECT_ID)REFERENCES SIDE_EFFECT(SIDE_EFFECT_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;
INSERT INTO MEDICINE_SIDE_EFFECT(MEDICINE_ID,SIDE_EFFECT_ID) VALUES
(1,'0520'),
(2,'0219'),
(3,'0081'),
(4,'0725'),
(5,'1241');


#14.PRESCRIPTION
CREATE TABLE PRESCRIPTION(
PRESCRIPTION_ID BIGINT NOT NULL AUTO_INCREMENT,
DOCTOR_ID BIGINT NOT NULL,
PATIENT_ID BIGINT NOT NULL,
DATE_OF_ISSUE DATE,
DESCRIPTION TEXT,
PRIMARY KEY(PRESCRIPTION_ID),
FOREIGN KEY(DOCTOR_ID) REFERENCES USER(USER_ID),
FOREIGN KEY(PATIENT_ID) REFERENCES USER(USER_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;

#15. MEDICINE_PRESCRIPTION
CREATE TABLE MEDICINE_PRESCRIPTION(
MEDICINE_ID BIGINT NOT NULL,
PRESCRIPTION_ID BIGINT NOT NULL,
QUANTITY INT,
PRIMARY KEY(MEDICINE_ID,PRESCRIPTION_ID),
FOREIGN KEY(MEDICINE_ID) REFERENCES MEDICINE(MEDICINE_ID),
FOREIGN KEY(PRESCRIPTION_ID) REFERENCES PRESCRIPTION(PRESCRIPTION_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;

#16.DR SPECIALIZATION
CREATE TABLE MD_SPECIALIZATION(
SPECIALIZATION_ID BIGINT NOT NULL AUTO_INCREMENT,
TITLE TEXT,
PRIMARY KEY(SPECIALIZATION_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;

#17 SPECIALIZATION
CREATE TABLE DOCTOR_MD_SPECIALIZATION(
DOCTOR_ID BIGINT NOT NULL,
SPECIALIZATION_ID BIGINT NOT NULL,
PRIMARY KEY(DOCTOR_ID,SPECIALIZATION_ID),
FOREIGN KEY(DOCTOR_ID)REFERENCES USER(USER_ID),
FOREIGN KEY(SPECIALIZATION_ID)REFERENCES MD_SPECIALIZATION(SPECIALIZATION_ID)
)ENGINE = INNODB DEFAULT CHARSET = UTF8;

alter table ACTIVE_SUBSTANCE CHANGE ACTIVE_SUBSTANCE_KEY ATC_KEY VARCHAR(100) NOT NULL UNIQUE;