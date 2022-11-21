.class public Lg1/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/d;

.field public final synthetic b:Lg1/m;


# direct methods
.method public constructor <init>(Lg1/m;Lh1/d;)V
    .locals 0

    iput-object p1, p0, Lg1/m$a;->b:Lg1/m;

    iput-object p2, p0, Lg1/m$a;->a:Lh1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lg1/m$a;->a:Lh1/d;

    iget-object v1, p0, Lg1/m$a;->b:Lg1/m;

    iget-object v1, v1, Lg1/m;->k:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Ll5/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh1/d;->s(Ll5/a;)Z

    return-void
.end method
