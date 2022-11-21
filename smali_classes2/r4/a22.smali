.class public final synthetic Lr4/a22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/wp1;


# direct methods
.method public constructor <init>(Lr4/wp1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/a22;->a:Lr4/wp1;

    return-void
.end method

.method public static a(Lr4/wp1;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lr4/a22;

    invoke-direct {v0, p0}, Lr4/a22;-><init>(Lr4/wp1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/a22;->a:Lr4/wp1;

    invoke-virtual {v0}, Lr4/wp1;->b()V

    return-void
.end method
