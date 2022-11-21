.class public abstract Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape$AbstractBase;
.super Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape$AbstractBase;->asDefined()Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 0

    return-object p0
.end method
