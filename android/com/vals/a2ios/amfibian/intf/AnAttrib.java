package com.vals.a2ios.amfibian.intf;

import java.lang.reflect.Method;

/**
 * Created by vsayenko on 9/26/15.
 *
 * AmfibiaN AnObjectImpl's attribute descriptor/handler.
 *
 * It is used for JSON/Database/Native object conversion
 * mappings. Simple way of thinking of this  - it is a mapper between native objetct's attributes and their JSON and Database counterparts. Also, it might define some custom converters between them in case default converters do not work for you. 
 */
public interface AnAttrib {

    void setCustomSetConverter(CustomConverter converter);

    void setCustomSetConverter(String key, CustomConverter converter);

    CustomConverter getCustomSetConverter(String key);

    CustomConverter getCustomSetConverter();

    void clearCustomSetConverters();

    void setDefaultSetConversionKey(String key);

    void setCustomGetConverter(CustomConverter converter);

    void setCustomGetConverter(String key, CustomConverter converter);

    CustomConverter getCustomGetConverter(String key);

    CustomConverter getCustomGetConverter();

    void clearCustomGetConverters();

    void setDefaultGetConversionKey(String key);

    void setAnObject(AnObject<?> anObject);

    String getAttribName();

    void setAttribName(String attribName);

    String getColumnName();

    void setColumnName(String columnName);

    /**
    * Sets native object's attribute value
    *
    * @param value - value to set. Sometimes it may not directly match
    * destination value type. For this case there will be an attempt to
    * auto match the value, or, custom converter might be supplied
    */
    void setValue(Object value) throws Exception;

    Object getValue() throws Exception;

    Method getGetter();

    Method getSetter();

    Class<?> getAttribClass();

    String getJsonOrAttribName();

    String getColumnOrAttribName();

    /**
     * Converter value may be used to implement customized
     * attribute value conversions for specific cases.
     */
    public static interface CustomConverter {
        public Object convert(Object value);
    }
}
