.class public interface abstract Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GenericTypeToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$LazyTokenList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForParameterizedType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForUpperBoundWildcard;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForGenericArray;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForRawType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForUnboundWildcard;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$OfFormalTypeVariable;
    }
.end annotation


# static fields
.field public static final COMPONENT_TYPE_PATH:C = '['

.field public static final EMPTY_TYPE_PATH:Ljava/lang/String; = ""

.field public static final INDEXED_TYPE_DELIMITER:C = ';'

.field public static final INNER_CLASS_PATH:C = '.'

.field public static final WILDCARD_TYPE_PATH:C = '*'


# virtual methods
.method public abstract getTypePathPrefix()Ljava/lang/String;
.end method

.method public abstract isPrimaryBound(Lnet/bytebuddy/pool/TypePool;)Z
.end method

.method public abstract toGenericType(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/lang/String;Ljava/util/Map;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/TypeVariableSource;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation
.end method
