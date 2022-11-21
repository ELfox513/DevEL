.class public final Lv3/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li5/l;

.field public final synthetic b:Lv3/t0;


# direct methods
.method public constructor <init>(Lv3/t0;Li5/l;)V
    .locals 0

    iput-object p1, p0, Lv3/r0;->b:Lv3/t0;

    iput-object p2, p0, Lv3/r0;->a:Li5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv3/r0;->b:Lv3/t0;

    iget-object v1, p0, Lv3/r0;->a:Li5/l;

    invoke-static {v0, v1}, Lv3/t0;->p6(Lv3/t0;Li5/l;)V

    return-void
.end method
