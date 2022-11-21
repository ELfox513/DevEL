.class public abstract Lr4/mm3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lr4/mm3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/pm3<",
        "TMessageType;TBuilderType;>;",
        "Lr4/bo3;"
    }
.end annotation


# instance fields
.field public final zzb:Lr4/gm3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    invoke-static {}, Lr4/gm3;->a()Lr4/gm3;

    move-result-object v0

    iput-object v0, p0, Lr4/mm3;->zzb:Lr4/gm3;

    return-void
.end method
