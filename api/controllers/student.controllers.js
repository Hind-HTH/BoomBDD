const { sequelize } = require('@models');
const { etudiants } = sequelize.models;

exports.createStudent = async (req, res)=>{
  try {
    
  } catch (error) {
    
  }  
}
exports.getAllStudent = async (req, res)=>{
  try {
    const result = await etudiants.findAll({
      attributes: ['id','id_session','nom','prenom','email','telephone', 'adresse', 'ville', 'codePostale']
    });
    return res.status(200).send(result);
  } catch (e) {
    console.log(e);
    return res.status(500).send();
  }  
}
exports.getOneStudent = async (req, res)=>{
  try {
    const result = await etudiants.findOne({
      attributes: ['id','id_session','nom','prenom','email',,'telephone', 'adresse', 'ville', 'codePostale'],
      where:{
        id: req.params.id_student
      }
    });
    return res.status(200).send(result);
  } catch (e) {
    console.log(e);
    return res.status(500).send();
  }  
}
exports.updateStudent = async (req, res)=>{
  const {id_session,nom,prenom,email,mdp,telephone, adresse, ville, codePostale} = req.params;
  try {
    const result = await etudiants.update({id_session,nom,prenom,email,mdp,telephone, adresse, ville, codePostale},{
      where:{
        id: req.params.id_student
      }
    });
    return res.status(200).send(result);
  } catch (e) {
    console.log(e);
    return res.status(500).send();
  }   
}
exports.deleteStudent = async (req, res)=>{
  try {
    const result = await etudiants.destroy({
      where:{
        id: req.params.id_student
      }
    });
    return res.status(200).send(result);
  } catch (e) {
    console.log(e);
    return res.status(500).send();
  }   
}
