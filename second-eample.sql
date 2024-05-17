CREATE TABLE `amitdb1`.`employee` (
  `EmpID` INT NOT NULL,
  `EmpName` VARCHAR(60) NOT NULL,
  `EmpAge` INT NOT NULL,
  `EmpDpt` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmpID`))
COMMENT = 'this is the first table of mine';


INSERT INTO `amitdb1`.`employee` (`EmpID`, `EmpName`, `EmpAge`, `EmpDpt`) VALUES ('001', 'Isuru', '22', 'OUSL');
INSERT INTO `amitdb1`.`employee` (`EmpID`, `EmpName`, `EmpAge`, `EmpDpt`) VALUES ('002', 'Eranda', '23', 'SL');
INSERT INTO `amitdb1`.`employee` (`EmpID`, `EmpName`, `EmpAge`, `EmpDpt`) VALUES ('003', 'Prasad', '25', 'CTC');
INSERT INTO `amitdb1`.`employee` (`EmpID`, `EmpName`, `EmpAge`, `EmpDpt`) VALUES ('004', 'Suu', '21', 'Appearal');


