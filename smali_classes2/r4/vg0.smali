.class public final Lr4/vg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lr4/tg0;


# direct methods
.method public constructor <init>(Lr4/wg0;Lr4/tg0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/vg0;->a:J

    iput-object p2, p0, Lr4/vg0;->b:Lr4/tg0;

    return-void
.end method
