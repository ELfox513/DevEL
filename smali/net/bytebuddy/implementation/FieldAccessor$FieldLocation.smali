.class public interface abstract Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FieldLocation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;,
        Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;,
        Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;
    }
.end annotation


# virtual methods
.method public abstract prepare(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;
.end method

.method public abstract with(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
.end method
