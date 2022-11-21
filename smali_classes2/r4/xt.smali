.class public final Lr4/xt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/xt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/xt;

    invoke-direct {v0}, Lr4/xt;-><init>()V

    sput-object v0, Lr4/xt;->a:Lr4/xt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lr4/sx;)Lr4/tt;
    .locals 29

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->a()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    move-wide v5, v1

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->b()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->d()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_1
    move-object/from16 v1, p1

    move-object v9, v3

    :goto_1
    invoke-virtual {v0, v1}, Lr4/sx;->k(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->f()Landroid/location/Location;

    move-result-object v15

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2}, Lr4/sx;->g(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->r()Li3/a;

    const/16 v23, 0x0

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->j()Ll3/a;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v1}, Lr4/vl0;->j([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_2

    :cond_2
    move-object/from16 v21, v3

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lr4/sx;->q()Z

    move-result v22

    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object v1

    invoke-virtual {v1}, Lr4/zx;->i()Lt2/t;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->n()I

    move-result v2

    invoke-virtual {v1}, Lt2/t;->b()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1}, Lt2/t;->c()I

    move-result v2

    const/4 v4, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v1}, Lt2/t;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lr4/wt;->a:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->c()Ljava/util/List;

    move-result-object v26

    new-instance v1, Lr4/tt;

    move-object v3, v1

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->m()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->o()Landroid/os/Bundle;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->p()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v4, 0x8

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->i()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->t()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Lr4/sx;->s()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v3 .. v28}, Lr4/tt;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lr4/uy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLr4/jt;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method
