package com.badlogic.gdx.p032ai.btree.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.badlogic.gdx.ai.btree.annotation.TaskAttribute */
/* loaded from: classes.dex */
public @interface TaskAttribute {
    String name() default "";

    boolean required() default false;
}
