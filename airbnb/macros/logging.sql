{% macro learn_logging()%}
    {{ log("Hello Log", info=True) }}
{% endmacro %}