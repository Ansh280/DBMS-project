-- Create a reader user
CREATE USER 'reader_user' IDENTIFIED BY 'reader_pass';

-- Create a staff user
CREATE USER 'staff_user' IDENTIFIED BY 'staff_pass';

-- Create an admin user
CREATE USER 'admin_user' IDENTIFIED BY 'admin_pass';

-- Create roles
CREATE ROLE reader_role;
CREATE ROLE staff_role;
CREATE ROLE admin_role;

-- Grant roles to users
GRANT reader_role TO reader_user;
GRANT staff_role TO staff_user;
GRANT admin_role TO admin_user;

-- Grant read-only access to books for readers
GRANT SELECT ON BOOKS TO reader_user;

-- Grant insert and update permissions for staff on REPORTS
GRANT INSERT, UPDATE ON REPORTS TO staff_user;

-- Grant full access to admin
GRANT ALL PRIVILEGES ON *.* TO admin_user;

-- Revoke update access from staff
REVOKE UPDATE ON REPORTS FROM staff_user;

-- Revoke all access from reader
REVOKE ALL PRIVILEGES ON BOOKS FROM reader_user;

DROP USER reader_user;
DROP ROLE reader_role;
