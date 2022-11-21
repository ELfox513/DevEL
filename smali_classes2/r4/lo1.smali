.class public final Lr4/lo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/io1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/io1;

    invoke-direct {v0}, Lr4/io1;-><init>()V

    iput-object v0, p0, Lr4/lo1;->a:Lr4/io1;

    return-void
.end method

.method public static synthetic a(Lr4/lo1;)Lr4/io1;
    .locals 0

    iget-object p0, p0, Lr4/lo1;->a:Lr4/io1;

    return-object p0
.end method


# virtual methods
.method public final b()Lr4/io1;
    .locals 1

    iget-object v0, p0, Lr4/lo1;->a:Lr4/io1;

    return-object v0
.end method
