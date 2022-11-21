.class public final Lr4/ko1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/h71;

.field public final b:Lr4/r81;

.field public final c:Lr4/e91;

.field public final d:Lr4/r91;

.field public final e:Lr4/kc1;

.field public final f:Lr4/af1;


# direct methods
.method public constructor <init>(Lr4/h71;Lr4/r81;Lr4/e91;Lr4/r91;Lr4/kc1;Lr4/af1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ko1;->a:Lr4/h71;

    iput-object p2, p0, Lr4/ko1;->b:Lr4/r81;

    iput-object p3, p0, Lr4/ko1;->c:Lr4/e91;

    iput-object p4, p0, Lr4/ko1;->d:Lr4/r91;

    iput-object p5, p0, Lr4/ko1;->e:Lr4/kc1;

    iput-object p6, p0, Lr4/ko1;->f:Lr4/af1;

    return-void
.end method


# virtual methods
.method public final a(Lr4/lo1;)V
    .locals 7

    invoke-static {p1}, Lr4/lo1;->a(Lr4/lo1;)Lr4/io1;

    move-result-object v0

    iget-object v1, p0, Lr4/ko1;->a:Lr4/h71;

    iget-object v2, p0, Lr4/ko1;->c:Lr4/e91;

    iget-object v3, p0, Lr4/ko1;->d:Lr4/r91;

    iget-object v4, p0, Lr4/ko1;->e:Lr4/kc1;

    iget-object p1, p0, Lr4/ko1;->b:Lr4/r81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lr4/jo1;->a(Lr4/r81;)La3/x;

    move-result-object v5

    iget-object v6, p0, Lr4/ko1;->f:Lr4/af1;

    invoke-static/range {v0 .. v6}, Lr4/io1;->d(Lr4/io1;Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;Lr4/cf1;)V

    return-void
.end method
