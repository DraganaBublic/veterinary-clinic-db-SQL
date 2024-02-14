                                          



SELECT animalName FROM animal WHERE animalName LIKE '%ilo'; /* List all names which ends with ilo.*/

SELECT animalName FROM animal WHERE animalDOB BETWEEN '2015-08-13' and '2020-01-28'; /* List all animal names which are born between specific dates.*/

SELECT invoiceNo, invoiceDate FROM treatment_invoice WHERE ownerID_fk = 1216; /* List all ivoices related to specific owner. */

SELECT * FROM animal where animalBreead LIKE'%cat' AND animalGender = 'Female'; /* Retrieve all information in the animal table for all female cats. */

SELECT COUNT(*) FROM animal_appoitment where animalID_fk = 4; /* Count the number of appoitments for specific animal. */


INSERT INTO medicines_prescribed (medicationName, medicationRegime, medicationCost, examinationNo) VALUES ('metacam', '3 tablets per day', '32.92', 205); /* Insert new row in the table medicines_prescribed.*/


UPDATE animal SET animalBreead = 'Kerry Bog Pony Horse' where animalID = 8; /* Change the animalbread for specific animal. */ 
UPDATE owner SET ownerAddressLine2 ='Oranmore' WHERE ownerAddressLine2 IS NULL AND ownerID = 1002; /* Cahnge the ownerAddressLine2 for specific owner. */


DELETE FROM medical_information WHERE animalID = 7; /* Delete medical_information about specific animal. */



/* COMPLEX QUERIES */

SELECT invoiceNo, paymentAmount,ownerID_fk, RANK() OVER (ORDER BY paymentAmount DESC) as ranking FROM treatment_invoice ORDER BY ranking; /* List all invoices ordered by paymentAmount (highest amount first) and includes the position of each invoice in the ranking. */

SELECT invoiceNo, SUM(paymentAmount) FROM treatment_invoice GROUP BY invoiceNo HAVING SUM(paymentAmount) > 100; /* List only the invoices with with paymentAmount over 100. */

SELECT * FROM treatment_invoice LEFT JOIN examination ON examination.examinationNo = treatment_invoice.examinationNo_fk LEFT JOIN medicines_prescribed ON medicines_prescribed.examinationNo = examination.examinationNo;
/* Retrieve treatment invoices details, examination details, medication details along with owner ID, animal ID and vet ID for all vet clinic appointments. */

SELECT owner.ownerName , COUNT(animal.animalName) AS total_animals FROM owner JOIN animal ON animal.ownerID_fk=owner.ownerID GROUP BY owner.ownerName ORDER BY total_animals DESC;
/* List the total number of animals each owner has */




