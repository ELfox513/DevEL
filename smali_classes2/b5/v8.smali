.class public abstract Lb5/v8;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb5/v8<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lb5/x8<",
        "TMessageType;TBuilderType;>;",
        "Lb5/fa;"
    }
.end annotation


# instance fields
.field public final zza:Lb5/p8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    invoke-static {}, Lb5/p8;->a()Lb5/p8;

    move-result-object v0

    iput-object v0, p0, Lb5/v8;->zza:Lb5/p8;

    return-void
.end method
