def handle_error_by_throwing_exception():
    raise Exception('Exception')


def handle_error_by_returning_none(input_data):
    int_input_data = int(input_data) if input_data.isdigit() else None
    if input_data is None:
        raise Exception('Result of valid input should not be None')

    return int_input_data


def handle_error_by_returning_tuple(input_data):
    int_input_data = int(input_data) if input_data.isdigit() else None
    if int_input_data is None:
        return (False, None, )

    return (True, int_input_data, )


def filelike_objects_are_closed_on_exception(filelike_object):
    filelike_object.close()
    filelike_object.do_something()
