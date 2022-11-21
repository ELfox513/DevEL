.class public abstract Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.super Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;->asDefined()Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 0

    return-object p0
.end method
