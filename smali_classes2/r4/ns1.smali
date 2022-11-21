.class public final Lr4/ns1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/gt2;

.field public final c:Lr4/gt2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/gt2;Lr4/gt2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ttc"

    iput-object p1, p0, Lr4/ns1;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/ns1;->b:Lr4/gt2;

    iput-object p3, p0, Lr4/ns1;->c:Lr4/gt2;

    return-void
.end method

.method public static synthetic a(Lr4/ns1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/ns1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lr4/ns1;)Lr4/gt2;
    .locals 0

    iget-object p0, p0, Lr4/ns1;->b:Lr4/gt2;

    return-object p0
.end method

.method public static synthetic c(Lr4/ns1;)Lr4/gt2;
    .locals 0

    iget-object p0, p0, Lr4/ns1;->c:Lr4/gt2;

    return-object p0
.end method
