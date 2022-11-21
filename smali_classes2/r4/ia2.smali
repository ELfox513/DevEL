.class public final Lr4/ia2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/ja2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc4/f;

.field public final b:Lr4/hp2;


# direct methods
.method public constructor <init>(Lc4/f;Lr4/hp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ia2;->a:Lc4/f;

    iput-object p2, p0, Lr4/ia2;->b:Lr4/hp2;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/ja2;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/ja2;

    iget-object v1, p0, Lr4/ia2;->b:Lr4/hp2;

    iget-object v2, p0, Lr4/ia2;->a:Lc4/f;

    invoke-interface {v2}, Lc4/f;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lr4/ja2;-><init>(Lr4/hp2;J)V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
