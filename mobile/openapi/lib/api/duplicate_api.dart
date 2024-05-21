//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DuplicateApi {
  DuplicateApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /duplicates' operation and returns the [Response].
  Future<Response> getAssetDuplicatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/duplicates';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<List<DuplicateResponseDto>?> getAssetDuplicates() async {
    final response = await getAssetDuplicatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DuplicateResponseDto>') as List)
        .cast<DuplicateResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'POST /duplicates/resolve' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [ResolveDuplicatesDto] resolveDuplicatesDto (required):
  Future<Response> resolveDuplicatesWithHttpInfo(ResolveDuplicatesDto resolveDuplicatesDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/duplicates/resolve';

    // ignore: prefer_final_locals
    Object? postBody = resolveDuplicatesDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [ResolveDuplicatesDto] resolveDuplicatesDto (required):
  Future<void> resolveDuplicates(ResolveDuplicatesDto resolveDuplicatesDto,) async {
    final response = await resolveDuplicatesWithHttpInfo(resolveDuplicatesDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
