.class public final Lr4/gq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/hq0;


# direct methods
.method public constructor <init>(Lr4/hq0;)V
    .locals 0

    iput-object p1, p0, Lr4/gq0;->a:Lr4/hq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lz2/t;->z()Lr4/iq0;

    move-result-object v0

    iget-object v1, p0, Lr4/gq0;->a:Lr4/hq0;

    invoke-virtual {v0, v1}, Lr4/iq0;->i(Lr4/hq0;)V

    return-void
.end method
