const router = require('express').Router();
const studentControllers = require('@controllers/student.controllers');

router.get('/get-all-student',                        studentControllers.getAllStudent);
router.get('/get-student',                            studentControllers.getOneStudent);
router.post('/create',                                studentControllers.createStudent);
router.put('/update/:id_student(\\d+)',               studentControllers.updateStudent);
router.delete('/delete/:id_student(\\d+)',            studentControllers.deleteStudent);

module.exports = router;