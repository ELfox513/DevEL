.class public interface abstract Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/RecordComponentDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InDefinedShape"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;
    }
.end annotation


# virtual methods
.method public abstract getAccessor()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
.end method

.method public abstract getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
.end method
