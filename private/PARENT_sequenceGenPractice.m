function [Sequence] = PARENT_sequenceGenPractice(Stimuli, level, mu, isPeriodic, index)
%------------------------------------------
% SCRIPT HEADER
%------------------------------------------
try
    rng('default') 
    rng shuffle

    if mu == 5;
        % 5 = 3
        targetArray = [5.678019254471476, 3.661356355111088, 2.310219714789670, 12.397877467402335, 3.398237906537287, 10.550844716523251, 3.647390286186329, 9.569489851480181, 7.789418434153841, -3.712701532471961, -0.652608500499502, 8.859566190835579, 1.887187283266051, 14.489914556439821, 5.421816476283973, 6.358583645262390, -0.064133358336011, -4.007019311031309, 8.428431637823063, 5.846126238156039];

    elseif mu == 3
        % 3 = 2:
        targetArray = [2.040732023471940, 4.554830885645037, 1.860554877836155, 5.430188147284118, -1.578540206852033, 2.813601886079726, 2.525912354962356, 0.855110160263608, -3.482435302893195, 0.370877877890043, 8.844002534767846, 9.361591367609089, -1.407785859902361, 4.364674196518694 9.816348156297474,  -6.970711784359329, 1.433658423604612, 14.086092351962659, 5.969006362786475, -0.122814962980412];

    elseif mu == 2
        % 2 = 8
        targetArray = [-0.238386166256579, 3.005475722456434, 9.672749358076054, 4.710140162330979, 1.266603620435650,  9.557063774247261, 5.106877996561266, -0.066558691428595, -9.666823922507580, 0.820572240292506, -3.789326571021379, 10.183999001039851, -1.609456813183736, -1.091606635032991, -0.596503312786375,  6.970276564940479, -2.035962330835599, 1.419023247910066, 7.102905837237808, -1.942693638870649];

    elseif mu == 1.5
        % 1.5 = 6
        targetArray = [3.499725953222240,  -0.096265635033575,  -1.561264265601313,   8.796784307835907,  -4.871841184232987,   4.235526080815756,   0.270345147893165, -2.173228022390262,  -3.274264319722191,   0.759934917514663,   6.926483700429113,   0.753989499469189,  13.842001093266628,  -6.650845710395920,  2.563957018840090,  -2.848489882784977,   5.121950592806781,   4.064035691514694,  -2.070934080786008,   4.282729590556337];
  
    elseif mu == 1
        if randi([0,1]) == 1
            % 1 = 2
            disp('mu = 1 - option 1');
            targetArray = [-3.158957475349104,   6.881515777552507,   6.186685381063064,  -0.971357674731818,   2.917266795473523,   4.908446444034103,  -5.801914741922190,  -6.540528019332220,   2.477584739048044,  -1.351372426966956,  -2.207502210174748,  11.896893409220375,  -0.448410455283744,  -5.097802143441507, 1.610184923492326,   3.351799223286096,  -5.867621743352451,   3.146850154476665,   5.710684372904655,   3.871618938160847];
        else
            disp('mu = 1 - option 2');
            % 1 = 8
            targetArray = [1.271791110894279,  -4.613683239747474,   0.651382449936715,  -4.952273239499053,   9.626858363366638,  -0.767707708954267,  -0.530897258512097,  4.975562268776660,  -8.494379372366931,  -2.021331128475027,  -2.967452770468234, 10.594992613802942,   7.613086751627341,   6.521614189058369,  -0.664614977852988,   1.878274089823140,  -2.196228928762212,   2.289134147638242,   4.240122085567541,  -3.886270426327034];
        end

    elseif mu == 0.5
        % 0.5 = 3
        targetArray = [3.437908918427357,   5.329735939151591,  -5.401407101579650, -5.843665692293916,   3.271922924714481,   2.163646650915351,  -1.191806207712026,  8.610795596203017,  -3.740928634788626,   3.966293681231488,  -0.842980458339285,  -4.100254464708446,   3.584093361929654,   1.074467283511483, -8.807819116459427,   0.427144137721366,   4.079799533839594,  -2.177740060621683,  -3.449595053812427,   9.982077737068547];

    elseif mu == 0
        % 0 = 11
        targetArray = [-4.543901884110479,  -4.131957537676000,   3.169484624392661,  -1.149395492045367,   2.498292071943967,  -1.855700471225845,  -3.633839808665436, 9.173694207473410,  -4.426367777925423,  -6.129612211752872,  -0.546843328298019,   7.094589190395833,  -5.100427352469296,   3.925783682334797, -1.539816037511791,   0.921637016153185,  -2.633064717199268,  11.612515695102363,  -6.008726256361151,   1.565645165455658];

    elseif mu == -0.5
        % 0.5 = 10
        targetArray = [-4.623870625379589,  -4.994427992785495,  -4.885278303616083,   1.642017521248059,   7.959690430819393,  -3.776065509087446,  -5.305738058331181,  -0.767342825926939,   4.801533076058568,   0.535471474357363,   5.258619004256272, -11.021052867146395,  -8.113932144355950,   3.525146168545136,  3.280505839274246,   4.565093141911383,   1.803653807955991,  -1.767921455420895,   3.141873465809267,  -1.009257972097086];

    elseif mu == -1  
        if randi([0,1]) == 1
            disp('mu = -1 - option 1');
            % -1 = 12
            targetArray = [-5.946784295777354,   3.938397102818275,   1.339797499946454,   0.557346764558766,  -8.751716707561737,   1.874682373229637,  -4.025577637814687,  -1.901387259675795,  -9.665898963781123,   2.945680956682987, -10.280934979556235,  -1.696694162177577,  -0.138956587690562,   6.747978451029666, -2.636430719573602,  -0.529440129094995,  -2.798701667399838,   4.677592010388377,   6.700267143782956,   0.427713907946869];
        else
            disp('mu = -1 - option 2');
            % -1 = 3
            targetArray = [-2.231362694170264,  -2.276901730396736,   6.866419361519942,  -8.105832801322215,  -3.593155667743429,   0.193940847497532,  -3.500451702061677,  3.192360830100362,   4.850082446467885,   3.115195365280671,  -5.392454287537400,   3.723364919548438,   2.416907045170423,   0.620829401294550,  5.617019281429374, -10.385150032794520,  -0.998066388627097, -10.896733208638786,   0.862485574566781,  -3.030968538678573];
        end

    elseif mu == -1.5 
        % -1.5 = 11
        targetArray = [2.808479307972053,  -1.049388205115343,  -1.258605778626450,  -3.313623347516966,  -4.673500950434365,  -7.008131891797654,  -6.925063168307732, 1.884453934378559, -11.497704971352402,  -4.063892809882682,  -5.069904671136083,  -0.482942549771868,  -2.674380282180977,  -1.502716469234564, 5.034781295304251,   6.059688268032275,  -8.499127273123422,   1.793643968552955,   1.954718063931870,   8.079252111292650];
    
    elseif mu == -2
        % -2 = 11
        targetArray = [-1.070249470153013,  -4.323214556444126,  -4.698484606787986,  -6.100218242740516,  -4.492924967706473,   3.645867427815085,   2.110425475130491,  -4.470364514359126,  -0.074468749444896,   3.552681811030454, -14.163249829336538,   6.412996338900911,   4.115717367155363,  -6.754064145724011, -5.156255937991467,   4.274538904418675,  -1.717356246500207,  -7.517875677348742,  -3.855145105281366,  -0.501052541961290];

    elseif mu == -3
        % -3 = 1
        targetArray = [1.306464991774149,  -4.220706979092030, -12.314787258588348,  -3.774611146795061,  -1.022953081647928,   4.575565644479805, -10.246489725505540, -3.895624283615136,  -6.792514903227231,   1.906494125740842,  4.861872028507790,  -8.004681695615076,  -4.553772858327682,  -0.503576537813318, -3.270175655127462,   1.022410164186515,   0.790233206979924, -11.769904147457350,   0.514328382825302,  -3.601835748592246];

    elseif mu == -5
        % -5 = 5
        targetArray = [-5.072342230450331,  -1.255989841255102, -10.363912492759438, -14.439242542285488,   4.540544544521962,  -7.501649420788192,  -6.056665571700851,  -5.357368947388712,  -2.550597329792118,  -6.533002852701901,  -7.274102565691452, -10.883843378377716,  -3.562654889113708,   3.277734433147829,  -7.262814264972802,  -2.511381338508452,  -9.408107679089408,  -9.782597062063804,   1.445558736824632,  -1.420473346526363];

    end

    % calculate the IOI array
    nIOI = length(targetArray) - 1;
    IOIarray = {};
    IOIarray = computeIOIArray(isPeriodic, nIOI, Stimuli.periodicIOI);

    % build structure
    f1 = 'targetArray';    v1 = {targetArray};
    f2 = 'level';          v2 = level;
    f3 = 'mu';             v3 = mu;
    f4 = 'isPeriodic';     v4 = isPeriodic;
    f5 = 'IOIarray';       v5 = {IOIarray};
    f6 = 'index';          v6 = index;

    Sequence = struct(f1, v1, f2, v2, f3, v3, f4, v4, ...
                      f5, v5, f6, v6);

    %---------------------
catch ME
    rethrow(ME);
end
%------------------------------------------