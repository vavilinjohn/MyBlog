listen 8080 # слушаем 8080 порт, хотя он используется по умолчанию

pid "shared/pids/unicorn.pid" # указываем место хранения PID файла мастер процесса

stderr_path "shared/log/unicorn.log" # перенаправляем $stderr в логи

stdout_path "shared/log/unicorn.log" # перенаправляем $stdout в логи

worker_processes 4 # количество воркеров = количество параллельно обрабатываемых запросов
