// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixel.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetPixelCollection on Isar {
  IsarCollection<int, Pixel> get pixels => this.collection();
}

const PixelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Pixel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'x',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'y',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'color',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Pixel>(
    serialize: serializePixel,
    deserialize: deserializePixel,
    deserializeProperty: deserializePixelProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializePixel(IsarWriter writer, Pixel object) {
  IsarCore.writeLong(writer, 1, object.x);
  IsarCore.writeLong(writer, 2, object.y);
  IsarCore.writeString(writer, 3, object.color);
  return object.id;
}

@isarProtected
Pixel deserializePixel(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _x;
  _x = IsarCore.readLong(reader, 1);
  final int _y;
  _y = IsarCore.readLong(reader, 2);
  final String _color;
  _color = IsarCore.readString(reader, 3) ?? '';
  final object = Pixel(
    _id,
    _x,
    _y,
    _color,
  );
  return object;
}

@isarProtected
dynamic deserializePixelProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readLong(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _PixelUpdate {
  bool call({
    required int id,
    int? x,
    int? y,
    String? color,
  });
}

class _PixelUpdateImpl implements _PixelUpdate {
  const _PixelUpdateImpl(this.collection);

  final IsarCollection<int, Pixel> collection;

  @override
  bool call({
    required int id,
    Object? x = ignore,
    Object? y = ignore,
    Object? color = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (x != ignore) 1: x as int?,
          if (y != ignore) 2: y as int?,
          if (color != ignore) 3: color as String?,
        }) >
        0;
  }
}

sealed class _PixelUpdateAll {
  int call({
    required List<int> id,
    int? x,
    int? y,
    String? color,
  });
}

class _PixelUpdateAllImpl implements _PixelUpdateAll {
  const _PixelUpdateAllImpl(this.collection);

  final IsarCollection<int, Pixel> collection;

  @override
  int call({
    required List<int> id,
    Object? x = ignore,
    Object? y = ignore,
    Object? color = ignore,
  }) {
    return collection.updateProperties(id, {
      if (x != ignore) 1: x as int?,
      if (y != ignore) 2: y as int?,
      if (color != ignore) 3: color as String?,
    });
  }
}

extension PixelUpdate on IsarCollection<int, Pixel> {
  _PixelUpdate get update => _PixelUpdateImpl(this);

  _PixelUpdateAll get updateAll => _PixelUpdateAllImpl(this);
}

sealed class _PixelQueryUpdate {
  int call({
    int? x,
    int? y,
    String? color,
  });
}

class _PixelQueryUpdateImpl implements _PixelQueryUpdate {
  const _PixelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Pixel> query;
  final int? limit;

  @override
  int call({
    Object? x = ignore,
    Object? y = ignore,
    Object? color = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (x != ignore) 1: x as int?,
      if (y != ignore) 2: y as int?,
      if (color != ignore) 3: color as String?,
    });
  }
}

extension PixelQueryUpdate on IsarQuery<Pixel> {
  _PixelQueryUpdate get updateFirst => _PixelQueryUpdateImpl(this, limit: 1);

  _PixelQueryUpdate get updateAll => _PixelQueryUpdateImpl(this);
}

class _PixelQueryBuilderUpdateImpl implements _PixelQueryUpdate {
  const _PixelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Pixel, Pixel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? x = ignore,
    Object? y = ignore,
    Object? color = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (x != ignore) 1: x as int?,
        if (y != ignore) 2: y as int?,
        if (color != ignore) 3: color as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension PixelQueryBuilderUpdate on QueryBuilder<Pixel, Pixel, QOperations> {
  _PixelQueryUpdate get updateFirst =>
      _PixelQueryBuilderUpdateImpl(this, limit: 1);

  _PixelQueryUpdate get updateAll => _PixelQueryBuilderUpdateImpl(this);
}

extension PixelQueryFilter on QueryBuilder<Pixel, Pixel, QFilterCondition> {
  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> xEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> xGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> xGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> xLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> xLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> xBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> yEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> yGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> yGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> yLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> yLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> yBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterFilterCondition> colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }
}

extension PixelQueryObject on QueryBuilder<Pixel, Pixel, QFilterCondition> {}

extension PixelQuerySortBy on QueryBuilder<Pixel, Pixel, QSortBy> {
  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortByX() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortByXDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortByY() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortByYDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> sortByColorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension PixelQuerySortThenBy on QueryBuilder<Pixel, Pixel, QSortThenBy> {
  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenByX() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenByXDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenByY() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenByYDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterSortBy> thenByColorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension PixelQueryWhereDistinct on QueryBuilder<Pixel, Pixel, QDistinct> {
  QueryBuilder<Pixel, Pixel, QAfterDistinct> distinctByX() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterDistinct> distinctByY() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<Pixel, Pixel, QAfterDistinct> distinctByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }
}

extension PixelQueryProperty1 on QueryBuilder<Pixel, Pixel, QProperty> {
  QueryBuilder<Pixel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Pixel, int, QAfterProperty> xProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Pixel, int, QAfterProperty> yProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Pixel, String, QAfterProperty> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension PixelQueryProperty2<R> on QueryBuilder<Pixel, R, QAfterProperty> {
  QueryBuilder<Pixel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Pixel, (R, int), QAfterProperty> xProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Pixel, (R, int), QAfterProperty> yProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Pixel, (R, String), QAfterProperty> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension PixelQueryProperty3<R1, R2>
    on QueryBuilder<Pixel, (R1, R2), QAfterProperty> {
  QueryBuilder<Pixel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Pixel, (R1, R2, int), QOperations> xProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Pixel, (R1, R2, int), QOperations> yProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Pixel, (R1, R2, String), QOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pixel _$PixelFromJson(Map<String, dynamic> json) => Pixel(
      json['id'] as int,
      json['x'] as int,
      json['y'] as int,
      json['color'] as String,
    );

Map<String, dynamic> _$PixelToJson(Pixel instance) => <String, dynamic>{
      'id': instance.id,
      'x': instance.x,
      'y': instance.y,
      'color': instance.color,
    };
