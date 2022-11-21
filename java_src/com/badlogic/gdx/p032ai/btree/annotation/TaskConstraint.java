package com.badlogic.gdx.p032ai.btree.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Inherited
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.badlogic.gdx.ai.btree.annotation.TaskConstraint */
/* loaded from: classes.dex */
public @interface TaskConstraint {
    int maxChildren() default Integer.MAX_VALUE;

    int minChildren() default 0;
}
