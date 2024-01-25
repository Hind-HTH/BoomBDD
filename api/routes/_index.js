const router = require('express').Router();

router.use('/student', require('@routes/student.routes'));

module.exports = router;