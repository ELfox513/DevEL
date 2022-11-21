package net.bytebuddy.utility;

import java.lang.reflect.Field;
import java.util.Comparator;
/* loaded from: classes.dex */
public enum FieldComparator implements Comparator<Field> {
    INSTANCE;

    @Override // java.util.Comparator
    public int compare(Field field, Field field2) {
        if (field == field2) {
            return 0;
        }
        int compareTo = field.getName().compareTo(field2.getName());
        return compareTo == 0 ? field.getType().getName().compareTo(field2.getType().getName()) : compareTo;
    }
}
