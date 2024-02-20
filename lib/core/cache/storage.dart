/// Interface that provides base persistance storage functionality.
abstract class BaseStorage<T> {
  /// Method for retrieval stored entity.
  /// - [id] identify unique key for the record
  /// - [defaultValue] returns default value if storage is empty
  Future<T?> getByKey(String id, {T? defaultValue});

  /// Method for saving entity.
  /// - [id] identify unique key for the record
  /// - [entity] to store
  Future<void> put(String id, T entity);

  /// Method for deleting entity with provided id.
  Future<void> delete(String id);
}

/// Interface that provides base persistance storage functionality.
abstract class Storage<T> implements BaseStorage<T> {
  /// Retrieve all stored keys.
  Future<List<String>> getKeys();

  /// Method for retrieval all stored entities.
  /// - [getAll] retrieve all records from the storage
  Future<List<T>> getAll();

  /// Method for dropping stored entities.
  Future<void> clear();

  /// Method for delete all stored entities.
  /// - [deleteAll] deletes all records from the storage
  Future<void> deleteAll();
}
