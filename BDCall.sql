
CREATE TABLE Report6(
  dolg        varchar(20) NULL,   
  pereplata   varchar(20) NULL
)


CREATE TABLE Abonent (
       INN                  varchar(12) NOT NULL,
       legal_address    varchar(50) NOT NULL,
       bank_account        varchar(5) NOT NULL
)
go


ALTER TABLE Abonent
       ADD PRIMARY KEY CLUSTERED (INN ASC)
go


CREATE TABLE Call (
       number_call         varchar(20) NOT NULL,
       start_date_of_the_conversation datetime NOT NULL,
       completion_date_conversation datetime NOT NULL,
       INN                 varchar(12) NOT NULL,
       date_of_installation_facilities datetime NOT NULL,
       code_traffic           varchar(5) NOT NULL,
       city               varchar(20) NOT NULL,
       the_number_of_minutes    varchar(20) NOT NULL
)
go


ALTER TABLE Call
       ADD PRIMARY KEY CLUSTERED (number_call ASC, INN  ASC, 
              date_of_installation_facilities ASC, code_traffic ASC)
go


CREATE TABLE Call_for_account (
       final_summ       money NULL,
       start_date_of_the_conversation datetime NOT NULL,
       completion_date_conversation datetime NOT NULL,
       number_call        varchar(20) NOT NULL,
       INN                  varchar(12) NOT NULL,
       date_of_installation_facilities datetime NOT NULL,
       code_traffic           varchar(5) NOT NULL,
       the_number_of_minutes    varchar(20) NOT NULL,
       cost_time     money NOT NULL,
       account_number          varchar(5) NOT NULL
)
go


ALTER TABLE Call_for_account
       ADD PRIMARY KEY CLUSTERED (number_call ASC,INN ASC, 
              date_of_installation_facilities ASC, code_traffic  ASC, account_number ASC)
go


CREATE TABLE Number_Telephone_Abonent(
       date_of_installation_facilities datetime NOT NULL,
       date_of_trip_facilities datetime NULL,
       INN                 varchar(12) NOT NULL,
       number_phone      varchar(7) NOT NULL
)
go


ALTER TABLE Number_Telephone_Abonent
       ADD PRIMARY KEY CLUSTERED (INN ASC, date_of_installation_facilities ASC)
go


CREATE TABLE Payment (
       date_of_payment        datetime NOT NULL,
       payment_order varchar(10) NOT NULL,
       summ                money NULL,
       account_number          varchar(5) NOT NULL
)
go


ALTER TABLE Payment
       ADD PRIMARY KEY CLUSTERED (date_of_payment  ASC, 
              payment_order ASC, account_number  ASC)
go


CREATE TABLE Account (
       account_number          varchar(5) NOT NULL,
       date_of_discharge        datetime NULL,
       INN                  varchar(12) NOT NULL
)
go


ALTER TABLE Account
       ADD PRIMARY KEY CLUSTERED (account_number ASC)
go


CREATE TABLE Traffic (
       code_traffic           varchar(5) NOT NULL,
       city                varchar(20) NOT NULL,
       clock          varchar(20) NOT NULL,
       cost_time     money NOT NULL
)
go


ALTER TABLE Traffic 
       ADD PRIMARY KEY CLUSTERED (code_traffic ASC)
go


ALTER TABLE Call
       ADD FOREIGN KEY (code_traffic)
                             REFERENCES Traffic  (code_traffic)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE Call
       ADD FOREIGN KEY (INN, date_of_installation_facilities)
                             REFERENCES Number_Telephone_Abonent  (INN, 
              date_of_installation_facilities)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE  Call_for_account
       ADD FOREIGN KEY (account_number)
                             REFERENCES Account (account_number)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE Call_for_account
       ADD FOREIGN KEY (number_call , INN, date_of_installation_facilities, 
              code_traffic )
                             REFERENCES Call (number_call , INN, 
              date_of_installation_facilities, code_traffic)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE Number_Telephone_Abonent
       ADD FOREIGN KEY (INN)
                             REFERENCES Abonent  (INN)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE  Payment
       ADD FOREIGN KEY (account_number)
                             REFERENCES Account (account_number)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE Account
       ADD FOREIGN KEY (INN)
                             REFERENCES Abonent (INN)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


--Абонент

INSERT INTO Abonent VALUES
                       ('123456789568','ул.Заки Валиди 62\1 кв.25','58963');
INSERT INTO Abonent VALUES
                       ('875369521453','ул.Цюрюпы 12 кв.13','58796');
INSERT INTO Abonent VALUES
                       ('425698753264','ул.Пушкина 2 кв.5','15987');
INSERT INTO Abonent VALUES
                       ('259784562145','ул.Аксакова 19 кв.1','87459');
INSERT INTO Abonent VALUES
                       ('254896587452','ул.Мубарякова 18\1 кв.35','26987');
INSERT INTO Abonent VALUES
                       ('875963485721','ул.Цюрюпы 101 кв.78','95875');
INSERT INTO Abonent VALUES
                       ('874523695487','ул.Фрунзе 62\2 кв.36','12385');
INSERT INTO Abonent VALUES
                       ('458712695478','ул.Набережная 92\3 кв.26','75395');
INSERT INTO Abonent VALUES
                       ('125896547852','ул.Салавата 13 кв.17','15978');
INSERT INTO Abonent VALUES
                       ('365978452695','ул.Блюхера 60 кв.89','74632');

--Номер телефона абонента

INSERT INTO Number_Telephone_Abonent VALUES
                       ('15/02/2007','30/05/2009','123456789568','2767608');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('30/05/2008','','875369521453','2234130');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('13/03/2009','','425698753264','2789256');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('19/09/2006','','259784562145','2712369');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('01/12/2006','01/11/2007','254896587452','2125786');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('03/11/2007','','875963485721','2475896');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('15/08/2007','','874523695487','2457896');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('30/05/2007','','458712695478','2743456');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('29/04/2009','','125896547852','2745642');
INSERT INTO Number_Telephone_Abonent VALUES
                       ('14/04/2009','','365978452695','2145687');

--Тариф
INSERT INTO Traffic VALUES
                       ('12345','Уфа','день','2');
INSERT INTO Traffic VALUES
                       ('12346','Уфа','ночь','1');
INSERT INTO Traffic  VALUES
                       ('22345','Казань','день','3');
INSERT INTO Traffic VALUES
                       ('22346','Казань','ночь','1');
INSERT INTO Traffic VALUES
                       ('32345','Волгоград','день','5');
INSERT INTO Traffic VALUES
                       ('32346','Волгоград','ночь','3');
INSERT INTO Traffic VALUES
                       ('42345','Воронеж','день','3');
INSERT INTO Traffic VALUES
                       ('42346','Воронеж','ночь','2');
INSERT INTO Traffic VALUES
                       ('52345','Новосибирск','день','8');
INSERT INTO Traffic VALUES
                       ('52346','Новосибирск','ночь','5');
INSERT INTO Traffic VALUES
                       ('62345','Калининград','день','6');
INSERT INTO Traffic VALUES
                       ('62346','Калининград','ночь','4');
INSERT INTO Traffic VALUES
                       ('72345','Брянск','день','6');
INSERT INTO Traffic VALUES
                       ('72346','Брянск','ночь','4');
--Звонок
INSERT INTO Call VALUES
                       ('1','15/02/2007 15:30:00','15/02/2007 15:40:00','123456789568','15/02/2007','12345','Уфа','10');
INSERT INTO Call VALUES
                       ('2','15/06/2008 08:30:00','15/06/2008 09:00:00','875369521453','30/05/2008','12346','Уфа','30');
INSERT INTO Call VALUES
                       ('3','15/06/2009 11:30:00','15/06/2009 12:30:00','425698753264','13/03/2009','12346','Уфа','60');
INSERT INTO Call VALUES
                       ('4','01/01/2006 19:00:00','01/01/2006 19:15:00','259784562145','19/09/2006','22345','Казань','15');
INSERT INTO Call VALUES
                       ('5','05/04/2007 16:13:00','05/04/2007 16:25:00','254896587452','01/12/2006','22346','Казань','12');
INSERT INTO Call VALUES
                       ('6','14/12/2007 18:20:00','14/12/2007 18:40:00','875963485721','03/11/2007','42346','Воронеж','20');
INSERT INTO Call VALUES
                       ('7','05/06/2007 06:20:00','05/06/2007 06:25:00','458712695478','30/05/2007','72345','Брянск','5');
INSERT INTO Call VALUES
                       ('8','30/12/2009 23:00:00','30/12/2009 23:50:00','125896547852','29/04/2009','52345','Новосибирск','50');

--Счет
INSERT INTO Account VALUES
                       ('88527','01/03/2007','123456789568');
INSERT INTO Account VALUES
                       ('56785','05/06/2008','875369521453');
INSERT INTO Account VALUES
                       ('97568','20/04/2009','425698753264');
INSERT INTO Account VALUES
                       ('32698','05/10/2006','259784562145');
INSERT INTO Account  VALUES
                       ('78965','01/01/2007','254896587452');
INSERT INTO Account  VALUES
                       ('14785','10/12/2007','875963485721');
--INSERT INTO Account  VALUES
                       --('96354','30/09/2007','874523695487');
INSERT INTO Account  VALUES
                       ('13698','01/06/2007','458712695478');
INSERT INTO Account VALUES
                       ('75295','15/05/2009','125896547852');
--INSERT INTO Account VALUES
                       --('74693','25/05/2009','365978452695');

--Платеж
INSERT INTO Payment VALUES
                       ('12/04/2007','8547896325','20','88527');
INSERT INTO Payment  VALUES
                       ('05/07/2008','8547325698','30','56785');
INSERT INTO Payment  VALUES
                       ('11/05/2009','2879634568','60','97568');
INSERT INTO Payment  VALUES
                       ('25/10/2006','9268792669','45','32698');
INSERT INTO Payment VALUES
                       ('15/01/2007','2687936969','12','78965');
INSERT INTO Payment VALUES
                       ('23/12/2007','2135887864','40','14785');
--INSERT INTO Payment VALUES
                       --('11/10/2007','9878656487','30','96354');
INSERT INTO Payment VALUES
                       ('30/06/2007','1478968785','30','13698');
INSERT INTO Payment  VALUES
                       ('29/05/2009','2879868796','400','75295');
--INSERT INTO Payment VALUES
                       --('26/05/2009','1681568868','','74693');

--Звонок_по_счету
INSERT INTO Call_for_account VALUES
                       ('20','15/02/2007 15:30:00','15/02/2007 15:40:00','1','123456789568','15/02/2007','12345','10','2','88527');
INSERT INTO Call_for_account VALUES
                       ('30','15/06/2008 08:30:00','15/06/2008 09:00:00','2','875369521453','30/05/2008','12346','30','1','56785');
INSERT INTO Call_for_account VALUES
                       ('60','15/06/2009 11:30:00','15/06/2009 12:30:00','3','425698753264','13/03/2009','12346','60','1','97568');
INSERT INTO Call_for_account VALUES
                       ('45','01/01/2006 19:00:00','01/01/2006 19:15:00','4','259784562145','19/09/2006','22345','15','3','32698');
INSERT INTO Call_for_account VALUES
                       ('12','05/04/2007 16:13:00','05/04/2007 16:25:00','5','254896587452','01/12/2006','22346','12','1','78965');
INSERT INTO Call_for_account VALUES
                       ('40','14/12/2007 18:20:00','14/12/2007 18:40:00','6','875963485721','03/11/2007','42346','20','2','14785');
INSERT INTO Call_for_account VALUES
                       ('30','05/06/2007 06:20:00','05/06/2007 06:25:00','7','458712695478','30/05/2007','72345','5','6','13698');
INSERT INTO Call_for_account VALUES
                       ('400','30/12/2009 23:00:00','30/12/2009 23:50:00','8','125896547852','29/04/2009','52345','50','8','75295');
