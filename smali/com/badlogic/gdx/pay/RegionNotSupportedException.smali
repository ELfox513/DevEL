.class public Lcom/badlogic/gdx/pay/RegionNotSupportedException;
.super Lcom/badlogic/gdx/pay/GdxPayException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Installation failed - Region not supported."

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    return-void
.end method
