.class public interface abstract Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy$Suffixing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseNameResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix;,
        Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForFixedValue;,
        Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForGivenType;,
        Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method
