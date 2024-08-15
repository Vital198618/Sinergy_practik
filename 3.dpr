procedure TForm1.AddButtonClick(Sender: TObject);
begin
  // Создаем новый набор данных для новой задачи
  NewTaskDataSet := TasksDataSet.CreateNewRecord;
  // Задаем значения полей
  NewTaskDataSet.FieldByName('Title').AsString := 'Новая задача';
  NewTaskDataSet.FieldByName('Description').AsString := 'Описание задачи';
  NewTaskDataSet.FieldByName('Priority').AsInteger := 1;
  NewTaskDataSet.FieldByName('DueDate').AsDateTime := Now;
  // Сохраняем изменения в базе данных
  TasksDataSet.ApplyUpdates;
  // Обновляем отображение списка задач
  TasksDataSet.Refresh;
end;
procedure TForm1.EditButtonClick(Sender: TObject);
begin
  if TasksDataSet.State = dsEdit then
    TasksDataSet.ApplyUpdates;

  TasksDataSet.Edit;
end;
procedure TForm1.DeleteButtonClick(Sender: TObject);
begin
  TasksDataSet.Delete;
  TasksDataSet.ApplyUpdates;
  TasksDataSet.Refresh;
end;
//SQL CREATE TABLE Tasks (
  Id int IDENTITY(1,1) PRIMARY KEY,
  Title nvarchar(255) NOT NULL,
  Description nvarchar(max) NULL,
  Priority int NOT NULL,
  DueDate datetime NOT NULL
);

//Анализ существующих на рынке WEB-приложений

Архитектура WEB-приложений

 Клиент-серверная архитектура: В этой архитектуре клиент (веб-браузер) и сервер (веб-сервер) работают на разных компьютерах. Клиент посылает запросы серверу, который обрабатывает их и отправляет ответ обратно клиенту.
 Облачная архитектура: В облачной архитектуре веб-приложение размещается на удаленных серверах, которыми управляет поставщик облачных услуг. Это обеспечивает масштабируемость, надежность и снижение затрат.
 Одностраничные приложения (SPA): SPA загружают весь необходимый код в браузер при первой загрузке страницы. Затем они динамически обновляют контент без перезагрузки страницы, обеспечивая улучшенный пользовательский интерфейс.

Возможности WEB-приложений

 Удобство использования: WEB-приложения доступны из любого места с подключением к Интернету через веб-браузер.
 Масштабируемость: WEB-приложения можно масштабировать для обслуживания большого количества пользователей путем добавления дополнительных серверов.
 Безопасность: WEB-приложения могут использовать различные механизмы безопасности для защиты данных и пользователей.
 Интеграция: WEB-приложения можно интегрировать с другими системами и услугами с помощью API-интерфейсов и веб-служб
