.class public interface abstract Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OwnerTypeLocatable"
.end annotation


# virtual methods
.method public abstract in(Ljava/lang/Class;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;"
        }
    .end annotation
.end method

.method public abstract in(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
.end method

.method public abstract in(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
.end method
