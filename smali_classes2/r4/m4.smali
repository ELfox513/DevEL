.class public final Lr4/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d6;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lr4/e8;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lr4/e8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m4;->a:Ljava/lang/Object;

    iput-object p2, p0, Lr4/m4;->b:Lr4/e8;

    return-void
.end method

.method public static synthetic c(Lr4/m4;Lr4/e8;)Lr4/e8;
    .locals 0

    iput-object p1, p0, Lr4/m4;->b:Lr4/e8;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/m4;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lr4/e8;
    .locals 1

    iget-object v0, p0, Lr4/m4;->b:Lr4/e8;

    return-object v0
.end method
