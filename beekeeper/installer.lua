local git_base_path = "https://github.com/icyeyes/icyhub/"
local libs = {"icycore"}
local modules = {"bee"}

print("BeeKeeper installer v1.0")
print("Начало установки программы...")
print("Установка библиотек: ")
os.execute("cd ../lib")
for key, lib in pairs(libs) do
    print(" ⮩ "..lib)
    os.execute("wget "..git_base_path.."libs/"..lib..".lua")
end
print("Все библиотеки установлены.")
os.execute("cd ../home && mkdir beekeeper && cd beekeeper && mkdir module && cd module")
print("Установка модулей BeeKeeper:")
for key, module in pairs(modules) do
    print(" ⮩ "..module)
    os.execute("wget "..git_base_path.."module/"..module..".lua")
end
print("Все модули установлены.")
os.execute("wget "..git_base_path.."main.lua")
print("Установка завершена. Перезагрузить сейчас? Y/N")
local input = io.read()
if string.upper(input) == "N" then
    print("Отмена перезагрузки...")
else
    print("Перезагрузка....")
    os.execute("reboot")
end