.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForGenericArray;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForTypeVariable;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForNonGenericType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$AbstractBase;
    }
.end annotation


# virtual methods
.method public abstract isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z
.end method
