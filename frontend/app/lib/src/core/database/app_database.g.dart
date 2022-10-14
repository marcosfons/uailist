// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Session extends DataClass implements Insertable<Session> {
  final String key;
  final String value;
  const Session({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SessionsCompanion toCompanion(bool nullToAbsent) {
    return SessionsCompanion(
      key: Value(key),
      value: Value(value),
    );
  }

  factory Session.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Session(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  Session copyWith({String? key, String? value}) => Session(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('Session(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Session && other.key == this.key && other.value == this.value);
}

class SessionsCompanion extends UpdateCompanion<Session> {
  final Value<String> key;
  final Value<String> value;
  const SessionsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
  });
  SessionsCompanion.insert({
    required String key,
    required String value,
  })  : key = Value(key),
        value = Value(value);
  static Insertable<Session> custom({
    Expression<String>? key,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
    });
  }

  SessionsCompanion copyWith({Value<String>? key, Value<String>? value}) {
    return SessionsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $SessionsTable extends Sessions with TableInfo<$SessionsTable, Session> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? 'sessions';
  @override
  String get actualTableName => 'sessions';
  @override
  VerificationContext validateIntegrity(Insertable<Session> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Session map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Session(
      key: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $SessionsTable createAlias(String alias) {
    return $SessionsTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final String email;
  final String displayName;
  final String avatarUrl;
  const User(
      {required this.id,
      required this.email,
      required this.displayName,
      required this.avatarUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['email'] = Variable<String>(email);
    map['display_name'] = Variable<String>(displayName);
    map['avatar_url'] = Variable<String>(avatarUrl);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      email: Value(email),
      displayName: Value(displayName),
      avatarUrl: Value(avatarUrl),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      displayName: serializer.fromJson<String>(json['displayName']),
      avatarUrl: serializer.fromJson<String>(json['avatarUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'email': serializer.toJson<String>(email),
      'displayName': serializer.toJson<String>(displayName),
      'avatarUrl': serializer.toJson<String>(avatarUrl),
    };
  }

  User copyWith(
          {String? id,
          String? email,
          String? displayName,
          String? avatarUrl}) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        displayName: displayName ?? this.displayName,
        avatarUrl: avatarUrl ?? this.avatarUrl,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email, displayName, avatarUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.email == this.email &&
          other.displayName == this.displayName &&
          other.avatarUrl == this.avatarUrl);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> email;
  final Value<String> displayName;
  final Value<String> avatarUrl;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    required String email,
    required String displayName,
    required String avatarUrl,
  })  : id = Value(id),
        email = Value(email),
        displayName = Value(displayName),
        avatarUrl = Value(avatarUrl);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? email,
    Expression<String>? displayName,
    Expression<String>? avatarUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (displayName != null) 'display_name': displayName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? id,
      Value<String>? email,
      Value<String>? displayName,
      Value<String>? avatarUrl}) {
    return UsersCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _avatarUrlMeta = const VerificationMeta('avatarUrl');
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
      'avatar_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, email, displayName, avatarUrl];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    } else if (isInserting) {
      context.missing(_displayNameMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    } else if (isInserting) {
      context.missing(_avatarUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      email: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      displayName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}display_name'])!,
      avatarUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_url'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class BuyList extends DataClass implements Insertable<BuyList> {
  final String uuid;
  final String name;
  final DateTime createdAt;
  const BuyList(
      {required this.uuid, required this.name, required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['name'] = Variable<String>(name);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BuyListsCompanion toCompanion(bool nullToAbsent) {
    return BuyListsCompanion(
      uuid: Value(uuid),
      name: Value(name),
      createdAt: Value(createdAt),
    );
  }

  factory BuyList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BuyList(
      uuid: serializer.fromJson<String>(json['uuid']),
      name: serializer.fromJson<String>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'name': serializer.toJson<String>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  BuyList copyWith({String? uuid, String? name, DateTime? createdAt}) =>
      BuyList(
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('BuyList(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BuyList &&
          other.uuid == this.uuid &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class BuyListsCompanion extends UpdateCompanion<BuyList> {
  final Value<String> uuid;
  final Value<String> name;
  final Value<DateTime> createdAt;
  const BuyListsCompanion({
    this.uuid = const Value.absent(),
    this.name = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  BuyListsCompanion.insert({
    this.uuid = const Value.absent(),
    required String name,
    this.createdAt = const Value.absent(),
  }) : name = Value(name);
  static Insertable<BuyList> custom({
    Expression<String>? uuid,
    Expression<String>? name,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  BuyListsCompanion copyWith(
      {Value<String>? uuid, Value<String>? name, Value<DateTime>? createdAt}) {
    return BuyListsCompanion(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BuyListsCompanion(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $BuyListsTable extends BuyLists with TableInfo<$BuyListsTable, BuyList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BuyListsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => uuidClass.v4());
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [uuid, name, createdAt];
  @override
  String get aliasedName => _alias ?? 'buy_lists';
  @override
  String get actualTableName => 'buy_lists';
  @override
  VerificationContext validateIntegrity(Insertable<BuyList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  BuyList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BuyList(
      uuid: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $BuyListsTable createAlias(String alias) {
    return $BuyListsTable(attachedDatabase, alias);
  }
}

class ProductBuyList extends DataClass implements Insertable<ProductBuyList> {
  final String uuid;
  final String buyListUuid;
  final String name;
  final int quantity;
  final bool bought;
  final DateTime createdAt;
  const ProductBuyList(
      {required this.uuid,
      required this.buyListUuid,
      required this.name,
      required this.quantity,
      required this.bought,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['buy_list_uuid'] = Variable<String>(buyListUuid);
    map['name'] = Variable<String>(name);
    map['quantity'] = Variable<int>(quantity);
    map['bought'] = Variable<bool>(bought);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ProductsBuyListCompanion toCompanion(bool nullToAbsent) {
    return ProductsBuyListCompanion(
      uuid: Value(uuid),
      buyListUuid: Value(buyListUuid),
      name: Value(name),
      quantity: Value(quantity),
      bought: Value(bought),
      createdAt: Value(createdAt),
    );
  }

  factory ProductBuyList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductBuyList(
      uuid: serializer.fromJson<String>(json['uuid']),
      buyListUuid: serializer.fromJson<String>(json['buyListUuid']),
      name: serializer.fromJson<String>(json['name']),
      quantity: serializer.fromJson<int>(json['quantity']),
      bought: serializer.fromJson<bool>(json['bought']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'buyListUuid': serializer.toJson<String>(buyListUuid),
      'name': serializer.toJson<String>(name),
      'quantity': serializer.toJson<int>(quantity),
      'bought': serializer.toJson<bool>(bought),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ProductBuyList copyWith(
          {String? uuid,
          String? buyListUuid,
          String? name,
          int? quantity,
          bool? bought,
          DateTime? createdAt}) =>
      ProductBuyList(
        uuid: uuid ?? this.uuid,
        buyListUuid: buyListUuid ?? this.buyListUuid,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
        bought: bought ?? this.bought,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('ProductBuyList(')
          ..write('uuid: $uuid, ')
          ..write('buyListUuid: $buyListUuid, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('bought: $bought, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(uuid, buyListUuid, name, quantity, bought, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductBuyList &&
          other.uuid == this.uuid &&
          other.buyListUuid == this.buyListUuid &&
          other.name == this.name &&
          other.quantity == this.quantity &&
          other.bought == this.bought &&
          other.createdAt == this.createdAt);
}

class ProductsBuyListCompanion extends UpdateCompanion<ProductBuyList> {
  final Value<String> uuid;
  final Value<String> buyListUuid;
  final Value<String> name;
  final Value<int> quantity;
  final Value<bool> bought;
  final Value<DateTime> createdAt;
  const ProductsBuyListCompanion({
    this.uuid = const Value.absent(),
    this.buyListUuid = const Value.absent(),
    this.name = const Value.absent(),
    this.quantity = const Value.absent(),
    this.bought = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ProductsBuyListCompanion.insert({
    this.uuid = const Value.absent(),
    required String buyListUuid,
    required String name,
    this.quantity = const Value.absent(),
    this.bought = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : buyListUuid = Value(buyListUuid),
        name = Value(name);
  static Insertable<ProductBuyList> custom({
    Expression<String>? uuid,
    Expression<String>? buyListUuid,
    Expression<String>? name,
    Expression<int>? quantity,
    Expression<bool>? bought,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (buyListUuid != null) 'buy_list_uuid': buyListUuid,
      if (name != null) 'name': name,
      if (quantity != null) 'quantity': quantity,
      if (bought != null) 'bought': bought,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ProductsBuyListCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? buyListUuid,
      Value<String>? name,
      Value<int>? quantity,
      Value<bool>? bought,
      Value<DateTime>? createdAt}) {
    return ProductsBuyListCompanion(
      uuid: uuid ?? this.uuid,
      buyListUuid: buyListUuid ?? this.buyListUuid,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      bought: bought ?? this.bought,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (buyListUuid.present) {
      map['buy_list_uuid'] = Variable<String>(buyListUuid.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (bought.present) {
      map['bought'] = Variable<bool>(bought.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsBuyListCompanion(')
          ..write('uuid: $uuid, ')
          ..write('buyListUuid: $buyListUuid, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('bought: $bought, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ProductsBuyListTable extends ProductsBuyList
    with TableInfo<$ProductsBuyListTable, ProductBuyList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsBuyListTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => uuidClass.v4());
  final VerificationMeta _buyListUuidMeta =
      const VerificationMeta('buyListUuid');
  @override
  late final GeneratedColumn<String> buyListUuid = GeneratedColumn<String>(
      'buy_list_uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES buy_lists (uuid)');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _boughtMeta = const VerificationMeta('bought');
  @override
  late final GeneratedColumn<bool> bought = GeneratedColumn<bool>(
      'bought', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (bought IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [uuid, buyListUuid, name, quantity, bought, createdAt];
  @override
  String get aliasedName => _alias ?? 'products_buy_list';
  @override
  String get actualTableName => 'products_buy_list';
  @override
  VerificationContext validateIntegrity(Insertable<ProductBuyList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    }
    if (data.containsKey('buy_list_uuid')) {
      context.handle(
          _buyListUuidMeta,
          buyListUuid.isAcceptableOrUnknown(
              data['buy_list_uuid']!, _buyListUuidMeta));
    } else if (isInserting) {
      context.missing(_buyListUuidMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('bought')) {
      context.handle(_boughtMeta,
          bought.isAcceptableOrUnknown(data['bought']!, _boughtMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  ProductBuyList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductBuyList(
      uuid: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      buyListUuid: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}buy_list_uuid'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      quantity: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      bought: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}bought'])!,
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ProductsBuyListTable createAlias(String alias) {
    return $ProductsBuyListTable(attachedDatabase, alias);
  }
}

class Supermarket extends DataClass implements Insertable<Supermarket> {
  final String uuid;
  final String name;
  final String address;
  final String? imageUrl;
  const Supermarket(
      {required this.uuid,
      required this.name,
      required this.address,
      this.imageUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['name'] = Variable<String>(name);
    map['address'] = Variable<String>(address);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    return map;
  }

  SupermarketsCompanion toCompanion(bool nullToAbsent) {
    return SupermarketsCompanion(
      uuid: Value(uuid),
      name: Value(name),
      address: Value(address),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
    );
  }

  factory Supermarket.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Supermarket(
      uuid: serializer.fromJson<String>(json['uuid']),
      name: serializer.fromJson<String>(json['name']),
      address: serializer.fromJson<String>(json['address']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'name': serializer.toJson<String>(name),
      'address': serializer.toJson<String>(address),
      'imageUrl': serializer.toJson<String?>(imageUrl),
    };
  }

  Supermarket copyWith(
          {String? uuid,
          String? name,
          String? address,
          Value<String?> imageUrl = const Value.absent()}) =>
      Supermarket(
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        address: address ?? this.address,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
      );
  @override
  String toString() {
    return (StringBuffer('Supermarket(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, name, address, imageUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Supermarket &&
          other.uuid == this.uuid &&
          other.name == this.name &&
          other.address == this.address &&
          other.imageUrl == this.imageUrl);
}

class SupermarketsCompanion extends UpdateCompanion<Supermarket> {
  final Value<String> uuid;
  final Value<String> name;
  final Value<String> address;
  final Value<String?> imageUrl;
  const SupermarketsCompanion({
    this.uuid = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });
  SupermarketsCompanion.insert({
    required String uuid,
    required String name,
    required String address,
    this.imageUrl = const Value.absent(),
  })  : uuid = Value(uuid),
        name = Value(name),
        address = Value(address);
  static Insertable<Supermarket> custom({
    Expression<String>? uuid,
    Expression<String>? name,
    Expression<String>? address,
    Expression<String>? imageUrl,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
      if (imageUrl != null) 'image_url': imageUrl,
    });
  }

  SupermarketsCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? name,
      Value<String>? address,
      Value<String?>? imageUrl}) {
    return SupermarketsCompanion(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      address: address ?? this.address,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupermarketsCompanion(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }
}

class $SupermarketsTable extends Supermarkets
    with TableInfo<$SupermarketsTable, Supermarket> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupermarketsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [uuid, name, address, imageUrl];
  @override
  String get aliasedName => _alias ?? 'supermarkets';
  @override
  String get actualTableName => 'supermarkets';
  @override
  VerificationContext validateIntegrity(Insertable<Supermarket> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  Supermarket map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Supermarket(
      uuid: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      address: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      imageUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
    );
  }

  @override
  $SupermarketsTable createAlias(String alias) {
    return $SupermarketsTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $SessionsTable sessions = $SessionsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $BuyListsTable buyLists = $BuyListsTable(this);
  late final $ProductsBuyListTable productsBuyList =
      $ProductsBuyListTable(this);
  late final $SupermarketsTable supermarkets = $SupermarketsTable(this);
  late final AuthDAO authDAO = AuthDAO(this as AppDatabase);
  late final BuyListDAO buyListDAO = BuyListDAO(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [sessions, users, buyLists, productsBuyList, supermarkets];
}
