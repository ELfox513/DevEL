.class public final Lr4/mh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/pj1;

.field public final b:Lr4/iv;


# direct methods
.method public constructor <init>(Lr4/pj1;Lr4/iv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/mh1;->a:Lr4/pj1;

    iput-object p2, p0, Lr4/mh1;->b:Lr4/iv;

    return-void
.end method


# virtual methods
.method public final a()Lr4/pj1;
    .locals 1

    iget-object v0, p0, Lr4/mh1;->a:Lr4/pj1;

    return-object v0
.end method

.method public final b()Lr4/iv;
    .locals 1

    iget-object v0, p0, Lr4/mh1;->b:Lr4/iv;

    return-object v0
.end method
