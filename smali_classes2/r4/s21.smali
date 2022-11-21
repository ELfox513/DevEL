.class public final Lr4/s21;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/d40;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lr4/d40;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/s21;->a:Lr4/d40;

    iput-object p2, p0, Lr4/s21;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()Lr4/d40;
    .locals 1

    iget-object v0, p0, Lr4/s21;->a:Lr4/d40;

    return-object v0
.end method

.method public final b()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lr4/s21;->b:Ljava/lang/Runnable;

    return-object v0
.end method
