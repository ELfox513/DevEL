.class public final Lr4/t74;
.super Lr4/u74;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/u74;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p2, p0, Lr4/t74;->b:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 1

    iget-object v0, p0, Lr4/t74;->b:[B

    return-object v0
.end method
