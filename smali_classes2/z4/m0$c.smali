.class public abstract Lz4/m0$c;
.super Lz4/m0;
.source "SourceFile"

# interfaces
.implements Lz4/t1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lz4/m0$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lz4/m0<",
        "TMessageType;TBuilderType;>;",
        "Lz4/t1;"
    }
.end annotation


# instance fields
.field public zzrw:Lz4/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/f0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz4/m0;-><init>()V

    invoke-static {}, Lz4/f0;->o()Lz4/f0;

    move-result-object v0

    iput-object v0, p0, Lz4/m0$c;->zzrw:Lz4/f0;

    return-void
.end method


# virtual methods
.method public final t()Lz4/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz4/f0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz4/m0$c;->zzrw:Lz4/f0;

    invoke-virtual {v0}, Lz4/f0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/m0$c;->zzrw:Lz4/f0;

    invoke-virtual {v0}, Lz4/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/f0;

    iput-object v0, p0, Lz4/m0$c;->zzrw:Lz4/f0;

    :cond_0
    iget-object v0, p0, Lz4/m0$c;->zzrw:Lz4/f0;

    return-object v0
.end method
