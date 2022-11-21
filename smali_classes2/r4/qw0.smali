.class public final Lr4/qw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/pw0;


# direct methods
.method public constructor <init>(Lr4/pw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qw0;->a:Lr4/pw0;

    return-void
.end method

.method public static final a()Lz2/a;
    .locals 9

    new-instance v8, Lz2/a;

    new-instance v1, Lr4/bq0;

    invoke-direct {v1}, Lr4/bq0;-><init>()V

    new-instance v2, Lr4/go0;

    invoke-direct {v2}, Lr4/go0;-><init>()V

    new-instance v3, Lr4/zi0;

    new-instance v0, Lr4/aj0;

    invoke-direct {v0}, Lr4/aj0;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lr4/zi0;-><init>(Lr4/aj0;[B)V

    new-instance v4, Lr4/mp;

    invoke-direct {v4}, Lr4/mp;-><init>()V

    new-instance v5, Lr4/bf0;

    invoke-direct {v5}, Lr4/bf0;-><init>()V

    new-instance v6, Lr4/t00;

    invoke-direct {v6}, Lr4/t00;-><init>()V

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lz2/a;-><init>(Lr4/bq0;Lr4/wn0;Lr4/zi0;Lr4/mp;Lr4/bf0;Lr4/t00;[B)V

    return-object v8
.end method
