SELECT staff.ename, staff.job
FROM Emp staff, Emp manager
WHERE staff.mgr=manager.empno and manager.ename LIKE 'BLAKE';