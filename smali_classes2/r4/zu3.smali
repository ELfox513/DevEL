.class public final Lr4/zu3;
.super Lr4/e8;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/Object;

.field public static final i:Lr4/u5;


# instance fields
.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Lr4/u5;

.field public final g:Lr4/r5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/zu3;->h:Ljava/lang/Object;

    new-instance v0, Lr4/l5;

    invoke-direct {v0}, Lr4/l5;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    invoke-virtual {v0, v1}, Lr4/l5;->a(Ljava/lang/String;)Lr4/l5;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lr4/l5;->b(Landroid/net/Uri;)Lr4/l5;

    invoke-virtual {v0}, Lr4/l5;->c()Lr4/u5;

    move-result-object v0

    sput-object v0, Lr4/zu3;->i:Lr4/u5;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lr4/u5;Lr4/r5;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lr4/e8;-><init>()V

    move-wide v1, p7

    iput-wide v1, v0, Lr4/zu3;->c:J

    move-wide v1, p9

    iput-wide v1, v0, Lr4/zu3;->d:J

    move/from16 v1, p15

    iput-boolean v1, v0, Lr4/zu3;->e:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lr4/zu3;->f:Lr4/u5;

    move-object/from16 v1, p20

    iput-object v1, v0, Lr4/zu3;->g:Lr4/r5;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f(ILr4/d8;J)Lr4/d8;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p1

    invoke-static {v4, v2, v3}, Lr4/ja;->c(III)I

    sget-object v2, Lr4/d8;->o:Ljava/lang/Object;

    iget-object v3, v0, Lr4/zu3;->f:Lr4/u5;

    iget-boolean v11, v0, Lr4/zu3;->e:Z

    iget-object v13, v0, Lr4/zu3;->g:Lr4/r5;

    iget-wide v4, v0, Lr4/zu3;->d:J

    move-wide/from16 v16, v4

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v1 .. v21}, Lr4/d8;->a(Ljava/lang/Object;Lr4/u5;Ljava/lang/Object;JJJZZLr4/r5;JJIIJ)Lr4/d8;

    return-object p2
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(ILr4/b8;Z)Lr4/b8;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lr4/ja;->c(III)I

    if-eqz p3, :cond_0

    sget-object p1, Lr4/zu3;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lr4/zu3;->c:J

    const-wide/16 v6, 0x0

    sget-object v8, Lr4/e61;->c:Lr4/e61;

    const/4 v9, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lr4/b8;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLr4/e61;Z)Lr4/b8;

    return-object p2
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lr4/zu3;->h:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lr4/ja;->c(III)I

    sget-object p1, Lr4/zu3;->h:Ljava/lang/Object;

    return-object p1
.end method
