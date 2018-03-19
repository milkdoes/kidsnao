-- Archivo para instalar librerias y software utilizado en el proyecto.
-- Definir main.
function main ()
	-- Instalar paquetes de pip.
	os.execute("pip install --user -U pip")
	os.execute("pip install --user -U setuptools")
	os.execute("pip install --user -U -r pipPaquetes.txt")
end

-- Llamar a main.
main()
