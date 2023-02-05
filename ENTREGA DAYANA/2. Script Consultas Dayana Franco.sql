

---CONSULTA REVISIONES


select t.idvehiculo , rdv.kilometros_en_la_revisión , rdv.fecha_de_la_revisión , rdv.importe_de_la_revisión , rdv.idmoneda 
from vehiculosdayana.tablavehiculo t 
left join keepvehiculos.revisiones_del_vehiculo rdv 
on t.idrevisión = rdv.idrevisión 


---CONSULTA VEHICULOS ACTIVOS
select t.idvehiculo as Vehiculo,
mv.modelo ||' , '||m.marca ||' , '||g.grupo as Modelo_Marca_GrupoEmpresarial, 
t.Fecha_de_compra ,
t.idmatricula as Matricula, 
c.nombre_color as Color, 
t.totalkilometros as Kilometros_totales, 
A.nombre_aseguradora as Aseguradora, 
ndp.idnúmerodepóliza as Num_poliza 

from keepvehiculos.vehiculotable t

inner join keepvehiculos.modelo_vehiculo mv 
on t.idmodelo = mv.idmodelo 

inner join keepvehiculos.marca m 
on mv.idmarca = m.idmarca 

inner join keepvehiculos.grupo g 
on m.grupo = g.idgrupo 

inner join keepvehiculos.color c 
on t.idcolor = c.idcolor 

inner join keepvehiculos.número_de_póliza ndp 
on T.idnúmerodepóliza = NDP.idnúmerodepóliza

inner join keepvehiculos.aseguradora a 
on NDP.idaseguradora = A.idaseguradora 
where Fecha_de_baja = '4000-01-01'